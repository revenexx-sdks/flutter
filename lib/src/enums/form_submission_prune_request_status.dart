part of '../../enums.dart';

enum FormSubmissionPruneRequestStatus {
  xnew(value: 'new'),
  read(value: 'read'),
  archived(value: 'archived'),
  spam(value: 'spam');

  const FormSubmissionPruneRequestStatus({required this.value});

  final String value;

  String toJson() => value;
}
