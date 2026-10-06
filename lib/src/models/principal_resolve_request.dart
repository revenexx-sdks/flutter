part of '../../models.dart';

///
class PrincipalResolveRequest implements Model {
  /// The contact the caller is acting for.
  final String contact_id;

  PrincipalResolveRequest({
    required this.contact_id,
  });

  factory PrincipalResolveRequest.fromMap(Map<String, dynamic> map) {
    return PrincipalResolveRequest(
      contact_id: map['contact_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "contact_id": contact_id,
    };
  }
}
