part of '../../enums.dart';

enum RecoveryMailSource {
    tenant(value: 'tenant'),
    platform(value: 'platform');

    const RecoveryMailSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}