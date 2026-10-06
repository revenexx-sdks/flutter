part of '../../models.dart';

/// One carrier this app knows the facts for, exactly as it would be created.
class ShippingCarrierCatalogEntry implements Model {
  /// The code the seeded row would carry, and the code a method's `carrier` text has to match to resolve to it.
  final String? code;

  /// The countries this carrier serves. ISO 3166-1 alpha-2 codes; null or an empty array means no restriction. Compared upper-cased, so a lower-case entry still matches. Declared as an array rather than the bare object a jsonb column derives to — this one is always a list.
  final List<String>? countries;

  /// This carrier's own daily pickup cut-off, HH:MM in 24-hour form, UTC. Overrides the tenant's cutoff_time for methods on this carrier — one shop-wide time cannot be both DHL's 16:00 and a forwarder's 12:00. Null or the empty string means this carrier declares none; any other shape is a 400, because a cut-off the estimator cannot read is a delivery promise silently computed without one.
  final String? cutoff_time;

  /// Transit time upper bound, in calendar days from the ship date.
  final int? eta_days_max;

  /// Transit time lower bound, in calendar days from the ship date — inherited by any method on this carrier that states no ETA of its own.
  final int? eta_days_min;

  /// Days needed to make a consignment ready for THIS carrier, added to the ship date before the transit days. Overrides the tenant's handling_days.
  final int? handling_days;

  /// Localized display names the seed would carry. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
  final Map<String, dynamic>? labels;

  /// The display name the seeded row would carry. An existing row keeps the merchant's own name — the seed never writes over one.
  final String? name;

  /// Whether a fresh install starts with this carrier. False means this app knows how to describe it but only creates it when asked.
  final bool? seeded;

  /// Service-level code the seeded row carries — one of the tenant's own values.
  final String? service_level;

  /// Tracking page URL with {tracking_code} where the number goes; {postal_code} and {country} are also substituted, URL-encoded. Null for a carrier with no public tracking page.
  final String? tracking_url_template;

  ShippingCarrierCatalogEntry({
    this.code,
    this.countries,
    this.cutoff_time,
    this.eta_days_max,
    this.eta_days_min,
    this.handling_days,
    this.labels,
    this.name,
    this.seeded,
    this.service_level,
    this.tracking_url_template,
  });

  factory ShippingCarrierCatalogEntry.fromMap(Map<String, dynamic> map) {
    return ShippingCarrierCatalogEntry(
      code: map['code']?.toString(),
      countries: List.from(map['countries'] ?? []),
      cutoff_time: map['cutoff_time']?.toString(),
      eta_days_max: map['eta_days_max'],
      eta_days_min: map['eta_days_min'],
      handling_days: map['handling_days'],
      labels: map['labels'],
      name: map['name']?.toString(),
      seeded: map['seeded'],
      service_level: map['service_level']?.toString(),
      tracking_url_template: map['tracking_url_template']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "countries": countries,
      "cutoff_time": cutoff_time,
      "eta_days_max": eta_days_max,
      "eta_days_min": eta_days_min,
      "handling_days": handling_days,
      "labels": labels,
      "name": name,
      "seeded": seeded,
      "service_level": service_level,
      "tracking_url_template": tracking_url_template,
    };
  }
}
