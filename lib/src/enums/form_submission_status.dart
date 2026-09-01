part of '../../enums.dart';

enum FormSubmissionStatus {
  xnew(value: 'new'),
  read(value: 'read'),
  archived(value: 'archived'),
  spam(value: 'spam');

  const FormSubmissionStatus({required this.value});

  final String value;

  String toJson() => value;
}
