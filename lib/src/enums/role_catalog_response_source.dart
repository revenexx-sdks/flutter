part of '../../enums.dart';

enum RoleCatalogResponseSource {
    tenant(value: 'tenant'),
    defaults(value: 'defaults');

    const RoleCatalogResponseSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}