part of '../../enums.dart';

enum FormsVocabularyName {
    formStatuses(value: 'form-statuses'),
    submissionStatuses(value: 'submission-statuses');

    const FormsVocabularyName({
        required this.value
    });

    final String value;

    String toJson() => value;
}