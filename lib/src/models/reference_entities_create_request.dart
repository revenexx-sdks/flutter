part of '../../models.dart';

/// 
class ReferenceEntitiesCreateRequest implements Model {
    /// 
    final String code;

    /// 
    final String? image;

    /// 
    final Map? labels;

    ReferenceEntitiesCreateRequest({
        required this.code,
        this.image,
        this.labels,
    });

    factory ReferenceEntitiesCreateRequest.fromMap(Map<String, dynamic> map) {
        return ReferenceEntitiesCreateRequest(
            code: map['code'].toString(),
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
