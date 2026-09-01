part of '../../enums.dart';

enum FormsVocabulariesGetName {
    formStatuses(value: 'form-statuses'),
    submissionStatuses(value: 'submission-statuses');

    const FormsVocabulariesGetName({
        required this.value
    });

    final String value;

    String toJson() => value;
}