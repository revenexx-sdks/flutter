part of '../../enums.dart';

enum PaymentDunningStage {
    none(value: 'none'),
    reminder(value: 'reminder'),
    overdue(value: 'overdue');

    const PaymentDunningStage({
        required this.value
    });

    final String value;

    String toJson() => value;
}