part of '../../models.dart';

///
class AttributeFieldOption implements Model {
  /// What to show in the picker, already resolved for the requested locale.
  final String? label;

  /// Colour/texture chip, when the option carries one — `{"hex": "#c0c0c0"}`.
  final Map? swatch;

  /// The stored value — an `attribute_options.code`, or a `reference_entity_records.code` when the options ARE a reference entity. This, never the label, is what goes into `attribute_values`.
  final String? value;

  AttributeFieldOption({
    this.label,
    this.swatch,
    this.value,
  });

  factory AttributeFieldOption.fromMap(Map<String, dynamic> map) {
    return AttributeFieldOption(
      label: map['label']?.toString(),
      swatch: map['swatch'],
      value: map['value']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "label": label,
      "swatch": swatch,
      "value": value,
    };
  }
}
