part of '../../enums.dart';

enum FormNotifySource {
  form(value: 'form'),
  tenant(value: 'tenant');

  const FormNotifySource({required this.value});

  final String value;

  String toJson() => value;
}
