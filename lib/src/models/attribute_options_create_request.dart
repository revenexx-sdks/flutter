part of '../../models.dart';

/// 
class AttributeOptionsCreateRequest implements Model {
    /// 
    final String attribute_id;

    /// 
    final String code;

    /// 
    final Map? labels;

    /// 
    final int? position;

    /// 
    final Map? swatch;

    AttributeOptionsCreateRequest({
        required this.attribute_id,
        required this.code,
        this.labels,
        this.position,
        this.swatch,
    });

    factory AttributeOptionsCreateRequest.fromMap(Map<String, dynamic> map) {
        return AttributeOptionsCreateRequest(
            attribute_id: map['attribute_id'].toString(),
            code: map['code'].toString(),
            labels: map['labels'],
            position: map['position'],
            swatch: map['swatch'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "attribute_id": attribute_id,
            "code": code,
            "labels": labels,
            "position": position,
            "swatch": swatch,
        };
    }
}
