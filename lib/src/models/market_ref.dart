part of '../../models.dart';

/// The market that was read from, resolved — so a caller who passed a code back gets the uuid, and one who passed a uuid gets the code the rest of the platform stores.
class MarketRef implements Model {
  /// The source market's code — the value other apps scope by.
  final String? code;

  /// The source market's primary key.
  final String? id;

  MarketRef({
    this.code,
    this.id,
  });

  factory MarketRef.fromMap(Map<String, dynamic> map) {
    return MarketRef(
      code: map['code']?.toString(),
      id: map['id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "id": id,
    };
  }
}
