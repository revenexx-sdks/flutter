part of '../../models.dart';

///
class FormActionMapping implements Model {
  /// The key in the submission `data` — i.e. the `name` of a definition node.
  final String? source;

  /// The column of the target entity it is written to.
  final String? target;

  FormActionMapping({
    this.source,
    this.target,
  });

  factory FormActionMapping.fromMap(Map<String, dynamic> map) {
    return FormActionMapping(
      source: map['source']?.toString(),
      target: map['target']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "source": source,
      "target": target,
    };
  }
}
