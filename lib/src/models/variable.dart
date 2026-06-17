part of '../../models.dart';

/// Variable
class Variable implements Model {
    /// Variable creation date in ISO 8601 format.
    final String $createdAt;

    /// Variable ID.
    final String $id;

    /// Variable creation date in ISO 8601 format.
    final String $updatedAt;

    /// Variable key.
    final String key;

    /// ID of resource to which the variable belongs. If resourceType is &quot;project&quot;, it is empty. If resourceType is &quot;function&quot;, it is ID of the function.
    final String resourceId;

    /// Service to which the variable belongs. Possible values are &quot;project&quot;, &quot;function&quot;
    final String resourceType;

    /// Variable secret flag. Secret variables can only be updated or deleted, but never read.
    final bool secret;

    /// Variable value.
    final String value;

    Variable({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.key,
        required this.resourceId,
        required this.resourceType,
        required this.secret,
        required this.value,
    });

    factory Variable.fromMap(Map<String, dynamic> map) {
        return Variable(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            key: map['key'].toString(),
            resourceId: map['resourceId'].toString(),
            resourceType: map['resourceType'].toString(),
            secret: map['secret'],
            value: map['value'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "key": key,
            "resourceId": resourceId,
            "resourceType": resourceType,
            "secret": secret,
            "value": value,
        };
    }
}
