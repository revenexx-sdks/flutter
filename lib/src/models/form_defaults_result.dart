part of '../../models.dart';

///
class FormDefaultsResult implements Model {
  /// Slugs this call created. On a tenant that has had the app installed for more than a moment this is empty — the sample form is seeded on `app.installed`.
  final List<String>? created;

  /// Slugs that were already there and were left alone. Nothing about them was overwritten — a form the merchant has edited stays edited.
  final List<String>? existing;

  FormDefaultsResult({
    this.created,
    this.existing,
  });

  factory FormDefaultsResult.fromMap(Map<String, dynamic> map) {
    return FormDefaultsResult(
      created: List.from(map['created'] ?? []),
      existing: List.from(map['existing'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created": created,
      "existing": existing,
    };
  }
}
