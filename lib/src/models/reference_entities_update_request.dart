part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class ReferenceEntitiesUpdateRequest implements Model {
    /// 
    final String? code;

    /// 
    final String? image;

    /// 
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
