part of '../../models.dart';

/// Runtime
class Runtime implements Model {
    /// Runtime ID.
    final String $id;

    /// Base Docker image used to build the runtime.
    final String base;

    /// Image name of Docker Hub.
    final String image;

    /// Parent runtime key.
    final String key;

    /// Name of the logo image.
    final String logo;

    /// Runtime Name.
    final String name;

    /// List of supported architectures.
    final List<String> supports;

    /// Runtime version.
    final String version;

    Runtime({
        required this.$id,
        required this.base,
        required this.image,
        required this.key,
        required this.logo,
        required this.name,
        required this.supports,
        required this.version,
    });

    factory Runtime.fromMap(Map<String, dynamic> map) {
        return Runtime(
            $id: map['\$id'].toString(),
            base: map['base'].toString(),
            image: map['image'].toString(),
            key: map['key'].toString(),
            logo: map['logo'].toString(),
            name: map['name'].toString(),
            supports: List.from(map['supports'] ?? []),
            version: map['version'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "base": base,
            "image": image,
            "key": key,
            "logo": logo,
            "name": name,
            "supports": supports,
            "version": version,
        };
    }
}
