part of '../../models.dart';

///
class RolesDefaultsResponse implements Model {
  /// Role keys created by this call.
  final List<String>? created;

  /// Role keys that were already there and were left untouched, permissions included.
  final List<String>? existing;

  RolesDefaultsResponse({
    this.created,
    this.existing,
  });

  factory RolesDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return RolesDefaultsResponse(
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
