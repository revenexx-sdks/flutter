part of '../../enums.dart';

enum FormsSubmissionsPruneStatus {
    xnew(value: 'new'),
    read(value: 'read'),
    archived(value: 'archived'),
    spam(value: 'spam');

    const FormsSubmissionsPruneStatus({
        required this.value
    });

    final String value;

    String toJson() => value;
}