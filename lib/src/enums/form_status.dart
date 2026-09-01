part of '../../enums.dart';

enum FormStatus {
    draft(value: 'draft'),
    live(value: 'live'),
    archived(value: 'archived');

    const FormStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}