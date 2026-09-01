part of '../revenexx.dart';

/// The records this app stores, addressed by id and edited outside the visual
/// editor: pages and their publish history, the menus a theme renders as
/// navigation, the block templates a new page can start from, the library of
/// block subtrees many pages share, and the one seeding call a theme
/// activation hook fires. A page here is its METADATA — title, slug, status,
/// type — never its blocks; the blocks live in the editor group, because
/// changing one is a mutation and not a field update. The vocabularies that
/// name the permitted values of a status column are here too.
class Pages extends Service {
  /// Initializes a [Pages] service
  Pages(super.client);

  /// The pool an editor picks a reusable block from. A library item is ONE block
  /// subtree that many pages share BY REFERENCE — edit the item and every page
  /// using it changes — which is what separates it from a template, the other
  /// reusable thing here, which copies instead and is at `GET /pages/templates`.
  /// So the two filters are the two questions the picker asks: `bundles` narrows
  /// to the block types that fit the field being filled, `text` matches the
  /// label a person gave the item.
  Future pagesLibraryList(
      {int? limit,
      int? offset,
      String? order,
      String? bundles,
      String? text}) async {
    const String apiPath = '/v1/pages/library';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (bundles != null) 'bundles': bundles,
      if (text != null) 'text': text,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Retires a reusable block. It leaves the picker and every list, but the
  /// blocks pointing at it keep their `library_item_id` — the FK's `set null`
  /// belongs to a hard delete, and this writes a tombstone. Delivery then skips
  /// the expansion for a struck item rather than failing on it, so a page that
  /// used it falls back to the block content stored in its own published
  /// revision: nothing breaks, but the pages quietly stop tracking each other.
  /// Nothing here tells you which pages those are, so establish that before
  /// striking it.
  Future<models.Error> pagesLibraryDelete({required String id}) async {
    final String apiPath = '/v1/pages/library/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The stored subtree behind one reusable block, so a picker can preview what
  /// dropping it into a page would produce. Because delivery expands the
  /// reference against THIS row at read time, what comes back is also what every
  /// page already using the item is currently rendering — which makes this the
  /// call to make before editing one.
  Future<models.Error> pagesLibraryGet({required String id}) async {
    final String apiPath = '/v1/pages/library/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The one write in this app whose blast radius is not a single page. Delivery
  /// expands a library reference against this row every time it serves, so
  /// replacing `tree` re-renders every page that points at the item —
  /// published ones included — without any of them being edited, republished
  /// or even touched. Nothing warns you first and no revision records it,
  /// because the pages did not change; the item did. Changing `label` or
  /// `bundle` only moves the item around the picker. Detaching one page from the
  /// item, so it keeps a copy of its own, is an editor mutation and not this
  /// route.
  Future<models.Error> pagesLibraryUpdate(
      {required String id, String? bundle, String? label, Map? tree}) async {
    final String apiPath = '/v1/pages/library/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (bundle != null) 'bundle': bundle,
      if (label != null) 'label': label,
      if (tree != null) 'tree': tree,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The management view of the menus a tenant keeps — `main`, `footer`,
  /// `account` and whatever else the theme asks for, each with the key it is
  /// looked up by. This route reads no filter at all — a `?menu_key=` is
  /// ignored, which the empty `filter` echo shows — so fetch a page and pick,
  /// or address one by id.
  Future pagesMenusList({int? limit, int? offset, String? order}) async {
    const String apiPath = '/v1/pages/menus';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Writes a menu by its KEY rather than by its id, which is what makes theme
  /// seeding safe to repeat: a key the tenant already has has its label and
  /// items replaced in place, a key it does not have is created. `items` is
  /// replaced wholesale and never merged, so sending an empty list empties the
  /// navigation. One caveat worth reading before you rely on the idempotence:
  /// the key's uniqueness is this route's doing and not the database's —
  /// `menu_key` carries an index but no unique constraint — so a duplicate key
  /// created any other way leaves this route updating whichever row it finds
  /// first.
  Future<models.Error> pagesMenusUpsert(
      {required String label,
      required String menuKey,
      List<models.PageMenuItem>? items}) async {
    const String apiPath = '/v1/pages/menus';

    final Map<String, dynamic> apiParams = {
      if (items != null) 'items': items.map((p) => p.toMap()).toList(),
      'label': label,
      'menuKey': menuKey,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Writes the tombstone. The menu drops out of the management list and out of
  /// `GET /pages/delivery/menus` in the same moment, so a theme that reads its
  /// key gets nothing back and renders nothing — there is no fallback and no
  /// error a storefront could act on. The key is free immediately, which means
  /// re-seeding the theme is the way back. Check what reads the key before
  /// striking it.
  Future<models.Error> pagesMenusDelete({required String id}) async {
    final String apiPath = '/v1/pages/menus/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One menu and its whole item tree — the ordered links a theme renders as
  /// its header, footer or account navigation. `items` is nested, not one level,
  /// so this is the entire navigation for that key in a single read. Addressed
  /// by ROW ID here; the key a theme knows it by is `menu_key` on the body, and
  /// the route that works by key is the upsert.
  Future<models.Error> pagesMenusGet({required String id}) async {
    final String apiPath = '/v1/pages/menus/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The same write as the upsert, for a caller that already holds the row id
  /// — use this when editing a menu a person picked from a list, and the
  /// upsert when reconciling a theme's defaults. `menu_key` is deliberately not
  /// editable here: the key is the handle every theme reads the menu by, so
  /// changing it would empty whatever is rendering that key without anything
  /// reporting an error.
  Future<models.Error> pagesMenusUpdate(
      {required String id,
      List<models.PageMenuItem>? items,
      String? label}) async {
    final String apiPath = '/v1/pages/menus/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (items != null) 'items': items.map((p) => p.toMap()).toList(),
      if (label != null) 'label': label,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The EDITORIAL index — every live page of the tenant, whatever its status,
  /// newest change first. This is the list the Cockpit shows a person: drafts
  /// and archived pages are in it, and a row here says nothing about whether a
  /// visitor can see the page, because a published status without a published
  /// revision still delivers nothing. A storefront wants `GET
  /// /pages/delivery/pages` instead, which answers only what is actually
  /// servable. Soft-deleted pages are never returned and the predicate is this
  /// route's own, not something a caller can switch off.
  Future pagesPagesList(
      {int? limit,
      int? offset,
      String? order,
      String? bundle,
      enums.PageStatus? status,
      String? q}) async {
    const String apiPath = '/v1/pages/pages';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (bundle != null) 'bundle': bundle,
      if (status != null) 'status': status.value,
      if (q != null) 'q': q,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Writes two rows, not one: the page itself and the translation row for its
  /// source language, so a page is never without the language it was authored in
  /// and `GET /pages/delivery/page?slug=` can match a localized URL from the
  /// first moment. Everything the caller leaves out comes from the tenant's
  /// settings, not from a literal in this app: `bundle` from
  /// default_page_bundle, `sourceLanguage` from default_source_language
  /// (resolved for the request's market), and the status of both the page and
  /// its source translation from default_page_status (draft | published).
  Future<models.Error> pagesPagesCreate(
      {required String title,
      String? bundle,
      Map? hostOptions,
      Map? meta,
      String? slug,
      String? sourceLanguage}) async {
    const String apiPath = '/v1/pages/pages';

    final Map<String, dynamic> apiParams = {
      'bundle': bundle,
      'hostOptions': hostOptions,
      'meta': meta,
      'slug': slug,
      'sourceLanguage': sourceLanguage,
      'title': title,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Writes a tombstone. The page leaves every list, every read and all delivery
  /// at once, and its slug is immediately free for another page — the unique
  /// index counts live rows only. Nothing is erased: the translations, blocks,
  /// edit state, revisions, comments and preview grants that hang off the page
  /// all keep their rows, because their `on delete cascade` belongs to a hard
  /// delete and this is not one. So a page can be brought back intact by
  /// clearing `deleted_at` — but not through this app, which publishes no
  /// route that does it.
  Future<models.Error> pagesPagesDelete({required String id}) async {
    final String apiPath = '/v1/pages/pages/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One page RECORD: what it is called, where it routes, what type it is, which
  /// revision is live. Not its content — the blocks are not on this row and no
  /// expansion here returns them. The editor reads them with `GET
  /// /pages/editor/{page_id}/state`, a renderer with `GET /pages/delivery/page`.
  /// A soft-deleted page answers 404 exactly like one that never existed, so
  /// this is also the check for whether an id is still good.
  Future<models.Error> pagesPagesGet({required String id}) async {
    final String apiPath = '/v1/pages/pages/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Corrects the page RECORD — the five fields an editor changes without
  /// opening the visual editor, which are `title`, `slug`, `status`, `meta` and
  /// `bundle`, and no others. Anything else in the body is dropped rather than
  /// refused, and the block tree is unreachable from here by design: content
  /// moves only through the editor's mutation log, so a caller cannot half-edit
  /// a page behind the undo history's back. Two consequences worth knowing
  /// before you call it: a slug is unique among live pages, so claiming one that
  /// is held answers 409; and setting `status` to published does NOT put
  /// anything in front of a visitor — delivery needs a revision, which only
  /// `POST /pages/editor/{page_id}/publish` writes.
  Future<models.Error> pagesPagesUpdate(
      {required String id,
      String? bundle,
      Map? meta,
      String? slug,
      enums.PageStatus? status,
      String? title}) async {
    final String apiPath = '/v1/pages/pages/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (bundle != null) 'bundle': bundle,
      if (meta != null) 'meta': meta,
      'slug': slug,
      if (status != null) 'status': status.value,
      if (title != null) 'title': title,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One entry per publication, newest first, which is the order a history is
  /// read in and the one this route sorts by unless `order` says otherwise. The
  /// `snapshot` — the whole published page, in every language — is
  /// deliberately not in the index: it is page-sized, and nothing that renders a
  /// history needs it.
  Future<models.Error> pagesPagesRevisions(
      {required String id,
      int? limit,
      int? offset,
      String? order,
      String? label,
      String? createdBy,
      String? createdByName,
      String? createdAt}) async {
    final String apiPath =
        '/v1/pages/pages/{id}/revisions'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (label != null) 'label': label,
      if (createdBy != null) 'created_by': createdBy,
      if (createdByName != null) 'created_by_name': createdByName,
      if (createdAt != null) 'created_at': createdAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The target of a theme activation hook: hand it the theme's default pages
  /// and menus and it creates whatever is missing. Idempotent by `slug` and by
  /// menu key — a slug or a key the tenant already holds is skipped rather
  /// than rewritten, so re-running after a theme update adds only the new ones
  /// and never overwrites what an editor has since changed. A seeded page is
  /// published on the spot, immediately servable by delivery: the
  /// default_page_status setting deliberately does not apply, because a theme
  /// that activates with invisible pages looks broken.
  Future<models.SeedResult> pagesSeed(
      {List<Map>? menus, List<Map>? pages}) async {
    const String apiPath = '/v1/pages/seed';

    final Map<String, dynamic> apiParams = {
      'menus': menus,
      'pages': pages,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.SeedResult.fromMap(res.data);
  }

  /// Every column of a template is an exact-match filter here:
  /// `?page_bundle=standard&field_name=content` is how a picker asks for the
  /// templates offered in one place, and `?is_default=true` is how a "new page"
  /// flow finds the one to start from.
  Future pagesTemplatesList(
      {int? limit,
      int? offset,
      String? order,
      String? id,
      String? label,
      String? description,
      String? pageBundle,
      String? fieldName,
      bool? isDefault,
      String? createdBy,
      String? createdAt,
      String? updatedAt}) async {
    const String apiPath = '/v1/pages/templates';

    final Map<String, dynamic> apiParams = {
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (description != null) 'description': description,
      if (pageBundle != null) 'page_bundle': pageBundle,
      if (fieldName != null) 'field_name': fieldName,
      if (isDefault != null) 'is_default': isDefault,
      if (createdBy != null) 'created_by': createdBy,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Removes the template row outright. This is the one delete in the app that
  /// is not a tombstone — `templates` carries no `deleted_at` — so it cannot
  /// be undone and the id will not come back. Nothing else breaks by it: pages
  /// built from the template hold their own copy of the blocks and never
  /// referenced the row.
  Future<models.Error> pagesTemplatesDelete({required String id}) async {
    final String apiPath = '/v1/pages/templates/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The blocks a page would START from if an editor picked this template —
  /// read it to preview the insert. A template is a COPY source, the opposite of
  /// a library item: nothing links back from the pages already built from it, so
  /// this tells you what future pages get and nothing about existing ones.
  Future<models.Error> pagesTemplatesGet({required String id}) async {
    final String apiPath = '/v1/pages/templates/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Edits what a future page will start from. Because templates copy rather
  /// than share, this reaches nothing that already exists — pages built from
  /// it keep the blocks they were handed, which is exactly the property that
  /// makes a template safe to edit and a library item dangerous. `is_default` is
  /// the one field with an effect past the picker: it decides what a new page of
  /// `page_bundle` starts with, and nothing here stops two templates of the same
  /// bundle from both claiming it, so which one wins is left to whoever reads
  /// the list.
  Future<models.Error> pagesTemplatesUpdate(
      {required String id,
      String? description,
      String? fieldName,
      bool? isDefault,
      String? label,
      String? pageBundle,
      List<models.PageBlockTree>? tree}) async {
    final String apiPath = '/v1/pages/templates/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      'description': description,
      'field_name': fieldName,
      if (isDefault != null) 'is_default': isDefault,
      if (label != null) 'label': label,
      'page_bundle': pageBundle,
      if (tree != null) 'tree': tree.map((p) => p.toMap()).toList(),
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Discovery for the vocabulary routes: the enums this app publishes, each
  /// with its name, its title and what it is for, and none of them unpacked —
  /// the permitted values are not on this route, only on the one that serves a
  /// single vocabulary. Names: edit-state-statuses, page-statuses,
  /// translation-statuses. Fetch one with GET /pages/vocabularies/{name}; a
  /// client holding the qualified pair 'pages.<name>' builds that URL from the
  /// pair alone.
  Future<models.PagesVocabularyIndex> pagesVocabulariesList() async {
    const String apiPath = '/v1/pages/vocabularies';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.PagesVocabularyIndex.fromMap(res.data);
  }

  /// One vocabulary unpacked: every value the column permits, each with the
  /// title to show for it, the sentence explaining it and the badge tone to
  /// render it in — everything a select or a status pill needs, so nothing
  /// downstream keeps its own copy of the labels. The values are read out of the
  /// column's CHECK constraint, so the served set IS the enforced set and the
  /// two cannot drift — a value added to the constraint appears here even
  /// before anyone labels it, titled from its own key. Values come back in
  /// constraint order, which is the order a select should offer. 'closed' says
  /// the set is exhaustive, so a value outside it is stale data rather than a
  /// missing label. Names: edit-state-statuses, page-statuses,
  /// translation-statuses.
  Future<models.Error> pagesVocabulariesGet(
      {required enums.PagesVocabulariesGetName name}) async {
    final String apiPath =
        '/v1/pages/vocabularies/{name}'.replaceAll('{name}', name.value);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}
