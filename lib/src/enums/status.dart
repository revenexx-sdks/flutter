part of '../../enums.dart';

enum Status {
    invited(value: 'invited'),
    active(value: 'active'),
    blocked(value: 'blocked');

    const Status({
        required this.value
    });

    final String value;

    String toJson() => value;
}