part of '../../enums.dart';

enum ValidationFailedResponseStatus {
    invalid(value: 'invalid');

    const ValidationFailedResponseStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}