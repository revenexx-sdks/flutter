part of '../revenexx.dart';

  /// WHO carries the parcel. A carrier row is one company shipping one class of
  /// service: it owns the tracking-URL template, the service level, the transit
  /// days, the pickup cut-off and the handling days, and every shipping method
  /// that ships with it INHERITS all of those unless it states its own. A
  /// carrier selling both a parcel and an express product is therefore two rows
  /// — one row cannot hold two delivery promises. Pausing or retiring one
  /// takes every method that ships with it out of the quote in a single edit,
  /// which is the reason the table exists. The tracking resolver lives here too,
  /// because the template it substitutes into is a column of this row: ask the
  /// carrier for the link rather than copying one carrier&#039;s URL shape into every
  /// shipment. What a carrier COSTS is never here — the price is the method&#039;s.
class ShippingCarriers extends Service {
  /// Initializes a [ShippingCarriers] service
  ShippingCarriers(super.client);

  /// Filterable by exact column value — `?code=`, `?status=` and
  /// `?service_level=` are applied as equalities and echoed back in `filter`. A
  /// query key that names no column of this entity is SILENTLY IGNORED: the page
  /// comes back unfiltered, 200, with an empty `filter`, so compare the echo
  /// against what you sent rather than trusting the status.
  Future<models.Error> shippingCarriersList({int? limit, int? offset, String? order, String? code, enums.ShippingCarriersListStatus? status, String? serviceLevel}) async {
    const String apiPath = '/v1/shipping/carriers';

        final Map<String, dynamic> apiParams = {
            if (limit != null) 'limit': limit,

            if (offset != null) 'offset': offset,

            if (order != null) 'order': order,

            if (code != null) 'code': code,

            if (status != null) 'status': status.value,

            if (serviceLevel != null) 'service_level': serviceLevel,

        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A carrier row is one company shipping one class of service: it owns the
  /// tracking-URL template, the service level, the transit days, the pickup
  /// cut-off and the handling days, and every method that ships with it inherits
  /// all of those unless it states its own. A carrier selling both a parcel and
  /// an express product is two rows. Reach for it for a carrier this app does
  /// not describe — a regional courier, a forwarder, an own fleet; for the
  /// DACH networks read GET /shipping/carriers/catalog and let POST
  /// /shipping/carriers/defaults write them. A create cannot omit `code` and
  /// `name`; every other column is optional or defaulted by the database. Two
  /// rows of this tenant may not share `code` — that is the 409.
  /// `service_level` has to name one of the tenant's own levels and
  /// `cutoff_time` has to be HH:MM in 24-hour UTC — both are refused rather
  /// than stored, because a cut-off the estimator cannot read would be dropped
  /// in silence and the shop would keep promising a ship date nobody computed.
  /// Creating a carrier quotes nothing on its own: a method has to reference it
  /// (`carrier_id`, or a `carrier` text equal to this code) before any of it is
  /// inherited.
  Future<models.Error> shippingCarriersCreate({required String code, required String name, List<String>? countries, String? cutoffTime, int? etaDaysMax, int? etaDaysMin, int? handlingDays, Map? labels, Map? metadata, int? position, String? serviceLevel, enums.ShippingCarrierStatus? status, String? trackingUrlTemplate}) async {
    const String apiPath = '/v1/shipping/carriers';

        final Map<String, dynamic> apiParams = {
            'code': code,

            'countries': countries,

            'cutoff_time': cutoffTime,

            'eta_days_max': etaDaysMax,

            'eta_days_min': etaDaysMin,

            'handling_days': handlingDays,

            'labels': labels,

            'metadata': metadata,

            'name': name,

            if (position != null) 'position': position,

            if (serviceLevel != null) 'service_level': serviceLevel,

            if (status != null) 'status': status.value,

            'tracking_url_template': trackingUrlTemplate,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// The DACH set — the three German parcel networks, the express carriers,
  /// the AT/CH incumbents and the pallet forwarders — each with the tracking
  /// template, service level, transit time and pickup cut-off it would be
  /// created with. `seeded` marks the four a fresh install already has. Adding a
  /// carrier is a data change, never a code change, and a merchant may of course
  /// create one that is not in here at all.
  Future shippingCarriersCatalog() async {
    const String apiPath = '/v1/shipping/carriers/catalog';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// The four networks a DACH shop is expected to have — DHL, DPD, GLS and UPS
  /// — created by code, and only the ones that are missing. The app runs this
  /// itself on `app.installed`, so a fresh install already has them; calling it
  /// by hand afterwards is how a tenant that predates a catalog entry catches
  /// up, and calling it twice costs nothing, because it reconciles rather than
  /// seeds. An existing row belongs to the merchant: only columns that are
  /// genuinely EMPTY are filled in (a tracking template added to the catalog
  /// after their install), never a value they set. Nothing is deleted.
  Future shippingCarriersDefaults() async {
    const String apiPath = '/v1/shipping/carriers/defaults';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  /// Deleting one clears `shipping_methods.carrier_id` rather than deleting
  /// those rows — the foreign keys decide that, not this route. So a method
  /// that referenced this carrier keeps working and resolves through its
  /// `carrier` code instead, which is also why this never answers a conflict —
  /// and it is the reason to prefer `status: 'retired'` where the carrier is
  /// merely finished. What the method silently LOSES is everything it was
  /// inheriting: the tracking template, the pickup cut-off, the handling days
  /// and the transit days. Unless its `carrier` text still matches another
  /// carrier, its ship date is recomputed on the market's own cut-off and
  /// handling settings, and a method that stated no `eta_days_min`/`max` of its
  /// own stops carrying a `delivery` estimate altogether. Nothing errors; the
  /// promise in the checkout just changes.
  Future<models.Error> shippingCarriersDelete({required String id}) async {
    final String apiPath = '/v1/shipping/carriers/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A carrier row is one company shipping one class of service: it owns the
  /// tracking-URL template, the service level, the transit days, the pickup
  /// cut-off and the handling days, and every method that ships with it inherits
  /// all of those unless it states its own. A carrier selling both a parcel and
  /// an express product is two rows. Read it when you need to know what a
  /// method's delivery promise really is: `cutoff_time`, `handling_days` and
  /// `eta_days_min`/`max` are inherited from here, so a shop that seems to
  /// promise the wrong ship date is usually explained by this row rather than by
  /// the method. It does NOT say which methods ship with it — that is GET
  /// /shipping/methods?carrier_id=… for the ones holding a reference and
  /// ?carrier=… for the ones still resolving through the legacy code text.
  Future<models.Error> shippingCarriersGet({required String id}) async {
    final String apiPath = '/v1/shipping/carriers/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// A carrier row is one company shipping one class of service: it owns the
  /// tracking-URL template, the service level, the transit days, the pickup
  /// cut-off and the handling days, and every method that ships with it inherits
  /// all of those unless it states its own. A carrier selling both a parcel and
  /// an express product is two rows. A partial update — send only what
  /// changes, which is where a carrier is paused, given a different tracking
  /// template, or moved to another pickup cut-off or transit time. This is the
  /// one switch that acts on several methods at once, in both directions. Moving
  /// `status` off 'active' takes every method that ships with this carrier out
  /// of POST /shipping/rates with a reason, which beats disabling each of them
  /// and forgetting one; tracking links are deliberately not gated on it, so a
  /// retired carrier's old shipments stay resolvable. Editing `cutoff_time`,
  /// `handling_days` or `eta_days_min`/`max` MOVES THE PROMISED SHIP DATE of
  /// every method that states none of its own: the estimator adds the handling
  /// days, then one further day when the cut-off has already passed at the
  /// instant being evaluated — compared at or after, in UTC, and as calendar
  /// days that do not skip a weekend. Two rows of this tenant may not share
  /// `code` — that is the 409.
  Future<models.Error> shippingCarriersUpdate({required String id, String? code, List<String>? countries, String? cutoffTime, int? etaDaysMax, int? etaDaysMin, int? handlingDays, Map? labels, Map? metadata, String? name, int? position, String? serviceLevel, enums.ShippingCarrierStatus? status, String? trackingUrlTemplate}) async {
    final String apiPath = '/v1/shipping/carriers/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (code != null) 'code': code,

            'countries': countries,

            'cutoff_time': cutoffTime,

            'eta_days_max': etaDaysMax,

            'eta_days_min': etaDaysMin,

            'handling_days': handlingDays,

            'labels': labels,

            'metadata': metadata,

            if (name != null) 'name': name,

            if (position != null) 'position': position,

            if (serviceLevel != null) 'service_level': serviceLevel,

            if (status != null) 'status': status.value,

            'tracking_url_template': trackingUrlTemplate,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }

  /// Hand in a carrier code and the tracking number printed on the label, and
  /// this answers the URL a buyer follows. The carrier owns the URL format, so
  /// nobody else has to. `order_shipments` stores a tracking_url per shipment
  /// today, which is one carrier's URL shape copied into every row — the day
  /// it changes, every historic link is wrong. Ask here instead. Tracking is NOT
  /// gated on carrier status: a retired carrier's old shipments stay resolvable.
  Future<models.Error> shippingTracking({required String carrier, String? country, String? postalCode, String? trackingCode}) async {
    const String apiPath = '/v1/shipping/tracking';

        final Map<String, dynamic> apiParams = {
            'carrier': carrier,

            'country': country,

            'postal_code': postalCode,

            'tracking_code': trackingCode,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Error.fromMap(res.data);

  }
}