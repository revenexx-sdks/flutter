part of '../../enums.dart';

enum AppsCreateVcsDeploymentType {
  branch(value: 'branch'),
  commit(value: 'commit');

  const AppsCreateVcsDeploymentType({required this.value});

  final String value;

  String toJson() => value;
}
