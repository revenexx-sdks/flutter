part of '../revenexx.dart';

  /// What a storefront calls, and the group to start in if you are building a
  /// theme. Four read-only routes, no editorial concepts in any of them: resolve
  /// one published page by slug or id into a ready-to-render block tree, list
  /// the published pages for routing and sitemaps, read the navigation menus,
  /// and resolve a share token into the CURRENT unpublished state for a preview
  /// link. These serve the published revision — not the live rows — with the
  /// requested language filled in from its fallback chain, block-level publish
  /// windows applied and library references expanded, so a renderer needs no
  /// second call and no knowledge of how any of it was authored.
class PagesDelivery extends Service {
  /// Initializes a [PagesDelivery] service
  PagesDelivery(super.client);

  /// One call gives a theme its whole chrome: header, footer and account
  /// navigation, each under the key the theme looks it up by. This route reads
  /// no filter — fetch all of them once and index by `id`.
  Future pagesDeliveryMenus({int? limit, int? offset, String? order}) async {
    const String apiPath = '/v1/pages/delivery/menus';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// What a storefront calls to render a URL: `GET
  /// /pages/delivery/page?slug=about-us&langcode=de`. Send exactly one selector
  /// — `slug` or `id`. `slug` is matched against the page and then against its
  /// translations, so a localized URL resolves to its page. Only the PUBLISHED
  /// revision is served, so an edit in progress never leaks. What comes back is
  /// finished rather than raw: `langcode` is resolved field by field with the
  /// page's source language behind it, blocks whose publish window has not
  /// opened or has already closed are left out, and every library reference is
  /// expanded into the subtree it points at — so a renderer walks the tree it
  /// is given and makes no second call for any of it.
  Future<models.Error> pagesDeliveryPage({String? slug, String? id, String? langcode}) async {
    const String apiPath = '/v1/pages/delivery/page';

        final Map<String, dynamic> apiParams = {
            if (slug != null) 'slug': slug,

            if (id != null) 'id': id,

            if (langcode != null) 'langcode': langcode,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// The route a sitemap, a static build or a link picker is generated from.
  /// Only published pages, never a soft-deleted one — `filter` echoes both
  /// predicates the route applies on its own. A `?status=` of your own is
  /// ignored: this route is the published view by definition.
  Future pagesDeliveryPages({int? limit, int? offset, String? order, String? bundle}) async {
    const String apiPath = '/v1/pages/delivery/pages';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (bundle != null) 'bundle': bundle,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// The same shape `GET /pages/delivery/page` answers, built from the
  /// UNPUBLISHED working copy instead of the published revision — so a
  /// reviewer without an editor account sees exactly what the storefront would
  /// render.
  Future<models.Error> pagesDeliveryPreview({required String token, String? langcode}) async {
    final String apiPath = '/v1/pages/delivery/preview/{token}'.replaceAll('{token}', token);

        final Map<String, dynamic> apiParams = {
            if (langcode != null) 'langcode': langcode,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}