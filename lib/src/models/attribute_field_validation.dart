part of '../../models.dart';

/// The limits the value has to satisfy, ready to hand to a form validator. Only the seven keys below are republished; anything else the tenant stored in `attributes.validation` stays there.
class AttributeFieldValidation implements Model {
    /// Largest permitted number.
    final double? max;

    /// Most entries.
    final int? max_items;

    /// Longest permitted text.
    final int? max_length;

    /// Smallest permitted number, for a number or measure field.
    final double? min;

    /// Fewest entries, for a multi-select or a collection.
    final int? min_items;

    /// Shortest permitted text.
    final int? min_length;

    /// A regular expression the text has to match.
    final String? pattern;

    AttributeFieldValidation({
        this.max,
        this.max_items,
        this.max_length,
        this.min,
        this.min_items,
        this.min_length,
        this.pattern,
    });

    factory AttributeFieldValidation.fromMap(Map<String, dynamic> map) {
        return AttributeFieldValidation(
            max: map['max']?.toDouble(),
            max_items: map['max_items'],
            max_length: map['max_length'],
            min: map['min']?.toDouble(),
            min_items: map['min_items'],
            min_length: map['min_length'],
            pattern: map['pattern']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "max": max,
            "max_items": max_items,
            "max_length": max_length,
            "min": min,
            "min_items": min_items,
            "min_length": min_length,
            "pattern": pattern,
        };
    }
}
