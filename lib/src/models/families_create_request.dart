part of '../../models.dart';

/// 
class FamiliesCreateRequest implements Model {
    /// 
    final String code;

    /// 
    final String? image_attribute;

    /// 
    final String? label_attribute;

    /// 
    final Map? labels;

    FamiliesCreateRequest({
        required this.code,
        this.image_attribute,
        this.label_attribute,
        this.labels,
    });

    factory FamiliesCreateRequest.fromMap(Map<String, dynamic> map) {
        return FamiliesCreateRequest(
            code: map['code'].toString(),
            image_attribute: map['image_attribute']?.toString(),
            label_attribute: map['label_attribute']?.toString(),
            labels: map['labels'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "image_attribute": image_attribute,
            "label_attribute": label_attribute,
            "labels": labels,
        };
    }
}
