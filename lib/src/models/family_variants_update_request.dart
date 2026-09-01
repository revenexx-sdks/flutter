part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class FamilyVariantsUpdateRequest implements Model {
    /// The attribute codes a product model splits its variants on. Two shapes are in the wild and both are read: a bare list of codes, or one entry per level, outermost first — `[{"level": 1, "axes": ["colour"]}, {"level": 2, "axes": ["size"]}]`. An attribute named here is READ-ONLY on the model and set on each variant, which is what `AttributeField.readonly_reason` reports.
    final Map? axes;

    /// The variant structure's stable identifier — how this family splits, not which product it splits. Unique per tenant.
    final String? code;

    /// The family this variant structure belongs to. A family may carry several, and a product names the one it follows through `family_variant_id`.
    final String? family_id;

    /// What the variant structure is called, per language tag.
    final Map? labels;

    FamilyVariantsUpdateRequest({
        this.axes,
        this.code,
        this.family_id,
        this.labels,
    });

    factory FamilyVariantsUpdateRequest.fromMap(Map<String, dynamic> map) {
        return FamilyVariantsUpdateRequest(
            axes: map['axes'],
            code: map['code']?.toString(),
            family_id: map['family_id']?.toString(),
            labels: map['labels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "axes": axes,
            "code": code,
            "family_id": family_id,
            "labels": labels,
        };
    }
}
