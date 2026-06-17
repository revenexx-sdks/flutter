part of '../../models.dart';

/// 
class AttributeGroupsCreateRequest implements Model {
    /// 
    final String code;

    /// 
    final Map? labels;

    /// 
    final int? position;

    AttributeGroupsCreateRequest({
        required this.code,
        this.labels,
        this.position,
    });

    factory AttributeGroupsCreateRequest.fromMap(Map<String, dynamic> map) {
        return AttributeGroupsCreateRequest(
            code: map['code'].toString(),
            labels: map['labels'],
            position: map['position'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "labels": labels,
            "position": position,
        };
    }
}
