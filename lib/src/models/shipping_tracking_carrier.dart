part of '../../models.dart';

/// The carrier row that owns the URL format, identified so the caller can show who is carrying the parcel without a second read. Resolved whatever its status — a retired carrier still answers here.
class ShippingTrackingCarrier implements Model {
    /// Stable carrier code, unique per tenant (e.g. dhl, dpd, gls). A method whose `carrier` text equals this code resolves to this carrier — that is the migration path off the free-text field. Deliberately no slug pattern: the column asks only for a non-empty string, and a contract stricter than the implementation would refuse codes merchants already keep.
    final String? code;

    /// Row id, assigned by the database on insert.
    final String? id;

    /// Display name, for the line that reads "shipped with …".
    final String? name;

    /// The class of service this row represents (default 'standard'), as a CODE into the tenant's own service levels (GET /shipping/service-levels). One row is one class: a carrier selling both a parcel and an express product is two rows. Deliberately not an enum here — the set is the merchant's, so a fixed list in this contract would make the gateway reject a level they created. A code the tenant does not keep is a 400 naming the codes they do.
    final String? service_level;

    /// Whether this carrier may be quoted (default 'active'). Anything else excludes every method that ships with it from POST /shipping/rates, with a reason. Tracking links are NOT gated on it — a retired carrier's old shipments stay resolvable. Reported here so a UI can mark a link as belonging to a carrier nobody quotes any more.
    final enums.ShippingTrackingCarrierStatus? status;

    ShippingTrackingCarrier({
        this.code,
        this.id,
        this.name,
        this.service_level,
        this.status,
    });

    factory ShippingTrackingCarrier.fromMap(Map<String, dynamic> map) {
        return ShippingTrackingCarrier(
            code: map['code']?.toString(),
            id: map['id']?.toString(),
            name: map['name']?.toString(),
            service_level: map['service_level']?.toString(),
            status: map['status'] != null ? enums.ShippingTrackingCarrierStatus.values.firstWhere((e) => e.value == map['status']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "id": id,
            "name": name,
            "service_level": service_level,
            "status": status?.value,
        };
    }
}
