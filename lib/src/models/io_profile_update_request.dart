part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class IoProfileUpdateRequest implements Model {
    /// Default &#039;insert&#039;.
    final enums.CartIoApplyMode? apply_mode;

    /// 
    final enums.CartIoDirection? direction;

    /// Default &#039;carts&#039;.
    final enums.CartIoEntity? entity;

    /// Default &#039;json&#039;.
    final enums.CartIoFormat? format;

    /// 
    final bool? is_template;

    /// Column mapping (Baseline-IO-compatible).
    final Map? mapping;

    /// 
    final String? name;

    /// 
    final Map? options;

    IoProfileUpdateRequest({
        this.apply_mode,
        this.direction,
        this.entity,
        this.format,
        this.is_template,
        this.mapping,
        this.name,
        this.options,
    });

    factory IoProfileUpdateRequest.fromMap(Map<String, dynamic> map) {
        return IoProfileUpdateRequest(
            apply_mode: map['apply_mode'] != null ? enums.CartIoApplyMode.values.firstWhere((e) => e.value == map['apply_mode']) : null,
            direction: map['direction'] != null ? enums.CartIoDirection.values.firstWhere((e) => e.value == map['direction']) : null,
            entity: map['entity'] != null ? enums.CartIoEntity.values.firstWhere((e) => e.value == map['entity']) : null,
            format: map['format'] != null ? enums.CartIoFormat.values.firstWhere((e) => e.value == map['format']) : null,
            is_template: map['is_template'],
            mapping: map['mapping'],
            name: map['name']?.toString(),
            options: map['options'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "apply_mode": apply_mode?.value,
            "direction": direction?.value,
            "entity": entity?.value,
            "format": format?.value,
            "is_template": is_template,
            "mapping": mapping,
            "name": name,
            "options": options,
        };
    }
}
