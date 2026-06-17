part of '../../models.dart';

/// Provider
class Provider implements Model {
    /// Provider creation time in ISO 8601 format.
    final String $createdAt;

    /// Provider ID.
    final String $id;

    /// Provider update date in ISO 8601 format.
    final String $updatedAt;

    /// Provider credentials.
    final Map<String, dynamic> credentials;

    /// Is provider enabled?
    final bool enabled;

    /// The name for the provider instance.
    final String name;

    /// Provider options.
    final Map<String, dynamic>? options;

    /// The name of the provider service.
    final String provider;

    /// Type of provider.
    final String type;

    Provider({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.credentials,
        required this.enabled,
        required this.name,
        this.options,
        required this.provider,
        required this.type,
    });

    factory Provider.fromMap(Map<String, dynamic> map) {
        return Provider(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            credentials: map['credentials'],
            enabled: map['enabled'],
            name: map['name'].toString(),
            options: map['options'],
            provider: map['provider'].toString(),
            type: map['type'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "credentials": credentials,
            "enabled": enabled,
            "name": name,
            "options": options,
            "provider": provider,
            "type": type,
        };
    }
}
