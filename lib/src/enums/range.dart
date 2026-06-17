part of '../../enums.dart';

enum Range {
    24h(value: '24h'),
    30d(value: '30d'),
    90d(value: '90d');

    const Range({
        required this.value
    });

    final String value;

    String toJson() => value;
}