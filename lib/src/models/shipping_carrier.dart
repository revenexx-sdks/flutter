part of '../../models.dart';

/// 
class ShippingCarrier implements Model {
    /// Stable carrier code, unique per tenant (e.g. dhl, dpd, gls). A method whose `carrier` text equals this code resolves to this carrier — that is the migration path off the free-text field. Deliberately no slug pattern: the column asks only for a non-empty string, and a contract stricter than the implementation would refuse codes merchants already keep.
    final String? code;

    /// The countries this carrier serves. ISO 3166-1 alpha-2 codes; null or an empty array means no restriction. Compared upper-cased, so a lower-case entry still matches. Declared as an array rather than the bare object a jsonb column derives to — this one is always a list.
    final List<String>? countries;

    /// When the row was created (UTC).
    final String? created_at;

    /// This carrier's own daily pickup cut-off, HH:MM in 24-hour form, UTC. Overrides the tenant's cutoff_time for methods on this carrier — one shop-wide time cannot be both DHL's 16:00 and a forwarder's 12:00. Null or the empty string means this carrier declares none; any other shape is a 400, because a cut-off the estimator cannot read is a delivery promise silently computed without one.
    final String? cutoff_time;

    /// Transit time upper bound, in calendar days from the ship date.
    final int? eta_days_max;

    /// Transit time lower bound, in calendar days from the ship date — inherited by any method on this carrier that states no ETA of its own.
    final int? eta_days_min;

    /// Days needed to make a consignment ready for THIS carrier, added to the ship date before the transit days. Overrides the tenant's handling_days.
    final int? handling_days;

    /// Row id, assigned by the database on insert.
    final String? id;

    /// Localized display names. A flat map keyed by locale — the Cockpit falls back to `en`. Null means the row has no translations and every client shows the untranslated column instead.
    final Map<String, dynamic>? labels;

    /// Free-form jsonb the platform never reads or validates — whatever the merchant or their integration needs to keep beside the row (a customer number with the carrier, an ERP key, a label-printer id). The shape varies BY INTEGRATION, not by anything this app knows, so no key is declared and none is reserved; the example is one plausible instance rather than a schema. A flat map of scalars is the convention, and nothing enforces it.
    final Map<String, dynamic>? metadata;

    /// Display name, as an operator typed it.
    final String? name;

    /// Sort order among the carriers; ties fall back to whatever the database returns.
    final int? position;

    /// The class of service this row represents (default 'standard'), as a CODE into the tenant's own service levels (GET /shipping/service-levels). One row is one class: a carrier selling both a parcel and an express product is two rows. Deliberately not an enum here — the set is the merchant's, so a fixed list in this contract would make the gateway reject a level they created. A code the tenant does not keep is a 400 naming the codes they do.
    final String? service_level;

    /// Whether this carrier may be quoted (default 'active'). Anything else excludes every method that ships with it from POST /shipping/rates, with a reason. Tracking links are NOT gated on it — a retired carrier's old shipments stay resolvable.
    final enums.ShippingCarrierStatus? status;

    /// Tracking page URL with {tracking_code} where the number goes; {postal_code} and {country} are also substituted, URL-encoded. Null for a carrier with no public tracking page.
    final String? tracking_url_template;

    /// When the row was last written (UTC).
    final String? updated_at;

    ShippingCarrier({
        this.code,
        this.countries,
        this.created_at,
        this.cutoff_time,
        this.eta_days_max,
        this.eta_days_min,
        this.handling_days,
        this.id,
        this.labels,
        this.metadata,
        this.name,
        this.position,
        this.service_level,
        this.status,
        this.tracking_url_template,
        this.updated_at,
    });

    factory ShippingCarrier.fromMap(Map<String, dynamic> map) {
        return ShippingCarrier(
            code: map['code']?.toString(),
            countries: List.from(map['countries'] ?? []),
            created_at: map['created_at']?.toString(),
            cutoff_time: map['cutoff_time']?.toString(),
            eta_days_max: map['eta_days_max'],
            eta_days_min: map['eta_days_min'],
            handling_days: map['handling_days'],
            id: map['id']?.toString(),
            labels: map['labels'],
            metadata: map['metadata'],
            name: map['name']?.toString(),
            position: map['position'],
            service_level: map['service_level']?.toString(),
            status: map['status'] != null ? enums.ShippingCarrierStatus.values.firstWhere((e) => e.value == map['status']) : null,
            tracking_url_template: map['tracking_url_template']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "countries": countries,
            "created_at": created_at,
            "cutoff_time": cutoff_time,
            "eta_days_max": eta_days_max,
            "eta_days_min": eta_days_min,
            "handling_days": handling_days,
            "id": id,
            "labels": labels,
            "metadata": metadata,
            "name": name,
            "position": position,
            "service_level": service_level,
            "status": status?.value,
            "tracking_url_template": tracking_url_template,
            "updated_at": updated_at,
        };
    }
}
