part of '../../enums.dart';

enum SitesCreateTemplateDeploymentType {
  branch(value: 'branch'),
  commit(value: 'commit'),
  tag(value: 'tag');

  const SitesCreateTemplateDeploymentType({required this.value});

  final String value;

  String toJson() => value;
}
