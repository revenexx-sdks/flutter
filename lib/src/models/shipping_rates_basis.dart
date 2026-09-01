part of '../../models.dart';

/// How this answer was measured — the tenant settings that shaped it, echoed so the numbers can be re-derived.
class ShippingRatesBasis implements Model {
    /// The instant the delivery estimates were computed from.
    final String? evaluated_at;

    /// Whether free-above thresholds were compared against the net or the gross order value.
    final enums.ShippingFreeAboveBasis? free_above_compares;

    /// The measure a matrix method without its own basis priced over.
    final enums.ShippingRatesBasisMatrixBasisDefault? matrix_basis_default;

    /// The unit the request expressed its weight in; converted to weight_unit before any tier was matched.
    final String? request_weight_unit;

    /// Kilograms per unit of `request_weight_unit`, as applied.
    final double? request_weight_unit_factor;

    /// The unit the rate tiers are keyed in — this market's `weight_unit` setting, else the unit the tenant flagged as default.
    final String? weight_unit;

    /// Kilograms per unit of `weight_unit`, as applied. Echoed because a unit is a code PLUS a number and the number is what priced the parcel — a quote has to be re-derivable from its own payload, not from a table the merchant may since have edited.
    final double? weight_unit_factor;

    ShippingRatesBasis({
        this.evaluated_at,
        this.free_above_compares,
        this.matrix_basis_default,
        this.request_weight_unit,
        this.request_weight_unit_factor,
        this.weight_unit,
        this.weight_unit_factor,
    });

    factory ShippingRatesBasis.fromMap(Map<String, dynamic> map) {
        return ShippingRatesBasis(
            evaluated_at: map['evaluated_at']?.toString(),
            free_above_compares: map['free_above_compares'] != null ? enums.ShippingFreeAboveBasis.values.firstWhere((e) => e.value == map['free_above_compares']) : null,
            matrix_basis_default: map['matrix_basis_default'] != null ? enums.ShippingRatesBasisMatrixBasisDefault.values.firstWhere((e) => e.value == map['matrix_basis_default']) : null,
            request_weight_unit: map['request_weight_unit']?.toString(),
            request_weight_unit_factor: map['request_weight_unit_factor']?.toDouble(),
            weight_unit: map['weight_unit']?.toString(),
            weight_unit_factor: map['weight_unit_factor']?.toDouble(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "evaluated_at": evaluated_at,
            "free_above_compares": free_above_compares?.value,
            "matrix_basis_default": matrix_basis_default?.value,
            "request_weight_unit": request_weight_unit,
            "request_weight_unit_factor": request_weight_unit_factor,
            "weight_unit": weight_unit,
            "weight_unit_factor": weight_unit_factor,
        };
    }
}
