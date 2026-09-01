part of '../revenexx.dart';

/// Moving carts in and out as JSON or CSV — the bulk data plane, which a
/// storefront checkout never touches. An import/export profile
/// (Baseline-IO-compatible) declares which direction it runs in, whether it
/// carries whole carts or bare lines, the format, how the external columns are
/// named, and what an import does with the lines a target cart already has;
/// four templates ship with the app and are seeded idempotently by name. The
/// two routes that actually move data are here as well: export one cart
/// through an export profile or ad hoc, and import a payload into a new cart
/// or an existing one. A profile only ever runs in the direction it declares
/// — handing an import profile to the export route is a 400.
class CartsIo extends Service {
  /// Initializes a [CartsIo] service
  CartsIo(super.client);

  /// Reads a payload of lines into a cart — the bulk-order path a buyer pastes
  /// a spreadsheet into. With `target_cart_id` the lines land in that cart,
  /// which must be active, and the profile's `apply_mode` decides what happens
  /// to the lines already there: 'replace' clears them first, 'insert' and
  /// 'append' both add. Without a target a new cart is created, and an OWNER is
  /// then required — `contact_id` or `session_key` — because a cart with
  /// neither cannot exist. `profile_id` names an IMPORT profile; without one the
  /// payload is read ad hoc, as CSV when `csv` is present and as JSON otherwise.
  /// The lines fold into identical product lines exactly as carts.items.create
  /// does, so `imported_lines` counts the lines READ and the cart may have
  /// gained fewer rows than that. A payload that parses to no line at all is a
  /// 400 rather than a quiet no-op.
  Future<models.Error> cartsImport(
      {String? contactId,
      String? csv,
      String? name,
      Map? payload,
      String? profileId,
      String? sessionKey,
      String? targetCartId}) async {
    const String apiPath = '/v1/carts/import';

    final Map<String, dynamic> apiParams = {
      'contact_id': contactId,
      if (csv != null) 'csv': csv,
      if (name != null) 'name': name,
      if (payload != null) 'payload': payload,
      'profile_id': profileId,
      if (sessionKey != null) 'session_key': sessionKey,
      'target_cart_id': targetCartId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The filters are what make this list usable: `?direction=export` is how a
  /// client offers the profiles that carts.export will accept, and
  /// `?is_template=true` separates the four bundled templates from what a
  /// merchant wrote. An unknown column is dropped rather than refused —
  /// `filter` echoes what was understood.
  Future<models.Error> cartsIoProfilesList(
      {String? id,
      String? name,
      enums.CartIoDirection? direction,
      enums.CartIoEntity? entity,
      enums.CartIoFormat? format,
      enums.CartIoApplyMode? applyMode,
      bool? isTemplate,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/carts/io/profiles';

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (direction != null) 'direction': direction.value,
      if (entity != null) 'entity': entity.value,
      if (format != null) 'format': format.value,
      if (applyMode != null) 'apply_mode': applyMode.value,
      if (isTemplate != null) 'is_template': isTemplate,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Defines a new import/export profile. Two fields are required and have no
  /// default — `name`, which must be unique within the tenant, and
  /// `direction`, which fixes the one way this profile will ever run. Everything
  /// else defaults to the common case: whole carts, JSON, `apply_mode` 'insert',
  /// not a template. The uniqueness of the name is a unique index rather than a
  /// check in this app, so a reused name is a 409 no matter which route wrote
  /// the other one, including the four bundled templates. The shape is
  /// Baseline-IO-compatible, so a mapping written for another app's import reads
  /// the same way here. Creating a profile does not move any data: carts.export
  /// and carts.import are what execute one, and each refuses a profile pointed
  /// the wrong way.
  Future<models.Error> cartsIoProfilesCreate(
      {required enums.CartIoDirection direction,
      required String name,
      enums.CartIoApplyMode? applyMode,
      enums.CartIoEntity? entity,
      enums.CartIoFormat? format,
      bool? isTemplate,
      Map? mapping,
      Map? options}) async {
    const String apiPath = '/v1/carts/io/profiles';

    final Map<String, dynamic> apiParams = {
      if (applyMode != null) 'apply_mode': applyMode.value,
      'direction': direction.value,
      if (entity != null) 'entity': entity.value,
      if (format != null) 'format': format.value,
      if (isTemplate != null) 'is_template': isTemplate,
      if (mapping != null) 'mapping': mapping,
      'name': name,
      'options': options,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Seeds the 4 bundled templates and reports which of them it had to create
  /// — the call that gives a fresh tenant something to export through before
  /// anybody has written a profile. Idempotent and matched by NAME, so a second
  /// call answers with everything under 'existing' and writes nothing, and a
  /// template a merchant has edited is left exactly as they left it rather than
  /// reset. It also runs by itself on app.installed; call it by hand where that
  /// event cannot be relied on, and after deleting a template to get it back.
  Future cartsIoProfilesDefaults() async {
    const String apiPath = '/v1/carts/io/profiles/defaults';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// Removes a profile. Nothing in this app points at one — no cart and no
  /// line stores the profile it was imported through — so no foreign key holds
  /// the delete up and nothing is orphaned by it; what breaks is the caller
  /// still holding that `profile_id`, which answers 404 on its next run.
  /// Deleting one of the four bundled templates is not permanent either: the
  /// next carts.io.profiles.defaults, and the next install of this app, seeds it
  /// again by name, in the shape it ships with rather than the shape a merchant
  /// had edited it into.
  Future<models.Error> cartsIoProfilesDelete({required String id}) async {
    final String apiPath = '/v1/carts/io/profiles/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One profile by id — the id carts.export and carts.import name in
  /// `profile_id`. Read it to see what a run will do before starting one:
  /// `direction`, because a profile only ever runs the way it declares;
  /// `entity`, whole carts or bare lines; `format`, where json round-trips and
  /// csv carries line fields only; `mapping`, what the external columns are
  /// called; and `apply_mode`, which decides what an import does with the lines
  /// a target cart already has. `is_template` says whether this is one of the
  /// four the app ships with or something a merchant wrote. Reading a profile
  /// runs nothing and changes nothing.
  Future<models.Error> cartsIoProfilesGet({required String id}) async {
    final String apiPath = '/v1/carts/io/profiles/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Edits a profile in place, the four bundled templates included — seeding
  /// matches on name and never rewrites what it finds, so an edit made here
  /// survives every later call to carts.io.profiles.defaults and every reinstall
  /// of the app. The name stays unique in the tenant, so renaming onto another
  /// profile's name is a 409, and a payload carrying no updatable field answers
  /// 400 rather than storing nothing quietly. Runs that already happened are
  /// unaffected: a profile is read at the moment carts.export or carts.import
  /// executes and nothing is kept pointing back at it, so changing a mapping
  /// changes the next run and no earlier one.
  Future<models.Error> cartsIoProfilesUpdate(
      {required String id,
      enums.CartIoApplyMode? applyMode,
      enums.CartIoDirection? direction,
      enums.CartIoEntity? entity,
      enums.CartIoFormat? format,
      bool? isTemplate,
      Map? mapping,
      String? name,
      Map? options}) async {
    final String apiPath = '/v1/carts/io/profiles/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (applyMode != null) 'apply_mode': applyMode.value,
      if (direction != null) 'direction': direction.value,
      if (entity != null) 'entity': entity.value,
      if (format != null) 'format': format.value,
      if (isTemplate != null) 'is_template': isTemplate,
      if (mapping != null) 'mapping': mapping,
      if (name != null) 'name': name,
      'options': options,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Renders one cart as a document somebody can take away. With `profile_id`
  /// the named EXPORT profile decides the format, the entity and the column
  /// names; handing it an import profile is a 400, because a profile only runs
  /// the way it declares. Without one the call runs ad hoc — JSON, unless
  /// `format: 'csv'` says otherwise. The JSON form is `{cart: {…}, items:
  /// […]}` and is exactly what carts.import takes back, so an export
  /// round-trips; the CSV form is the lines only, header first, and drops
  /// everything that lives on the cart rather than on a line. Nothing is stored
  /// and nothing about the cart changes — `filename` is a suggestion for a
  /// browser download, not a file this app keeps — and a cart of any status
  /// can be exported, including one already ordered.
  Future<models.Error> cartsExport(
      {required String id,
      enums.CartExportFormat? format,
      String? profileId}) async {
    final String apiPath = '/v1/carts/{id}/export'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (format != null) 'format': format.value,
      'profile_id': profileId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}
