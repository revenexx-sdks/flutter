part of '../../enums.dart';

enum FormsVocabularySummaryName {
    formStatuses(value: 'form-statuses'),
    submissionStatuses(value: 'submission-statuses');

    const FormsVocabularySummaryName({
        required this.value
    });

    final String value;

    String toJson() => value;
}