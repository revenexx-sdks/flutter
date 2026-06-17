part of '../../enums.dart';

enum Priority {
    normal(value: 'normal'),
    high(value: 'high');

    const Priority({
        required this.value
    });

    final String value;

    String toJson() => value;
}