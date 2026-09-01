part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class ReferenceEntitiesUpdateRequest implements Model {
    /// The entity's stable identifier — a domain of records the catalog POINTS AT instead of duplicating, so a brand is edited once and not on nine thousand products. Unique per tenant.
    final String? code;

    /// A delivery path or URL for the entity's own icon. Cosmetic — nothing in this app resolves it.
    final String? image;

    /// What the entity is called, per language tag — the heading over its record list.
    final Map? labels;

    ReferenceEntitiesUpdateRequest({
        this.code,
        this.image,
        this.labels,
    });

    factory ReferenceEntitiesUpdateRequest.fromMap(Map<String, dynamic> map) {
        return ReferenceEntitiesUpdateRequest(
            code: map['code']?.toString(),
            image: map['image']?.toString(),
            labels: map['labels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "image": image,
            "labels": labels,
        };
    }
}
