part of '../../enums.dart';

enum AuthMailSource {
    tenant(value: 'tenant'),
    platform(value: 'platform');

    const AuthMailSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}