part of '../../enums.dart';

enum AppsGetDeploymentDownloadType {
  source(value: 'source'),
  output(value: 'output');

  const AppsGetDeploymentDownloadType({required this.value});

  final String value;

  String toJson() => value;
}
