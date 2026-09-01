part of '../../models.dart';

/// AlgoScryptModified
class AlgoScryptModified implements Model {
  /// Salt used to compute hash.
  final String salt;

  /// Separator used to compute hash.
  final String saltSeparator;

  /// Key used to compute hash.
  final String signerKey;

  /// Algo type.
  final String type;

  AlgoScryptModified({
    required this.salt,
    required this.saltSeparator,
    required this.signerKey,
    required this.type,
  });

  factory AlgoScryptModified.fromMap(Map<String, dynamic> map) {
    return AlgoScryptModified(
      salt: map['salt'].toString(),
      saltSeparator: map['saltSeparator'].toString(),
      signerKey: map['signerKey'].toString(),
      type: map['type'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "salt": salt,
      "saltSeparator": saltSeparator,
      "signerKey": signerKey,
      "type": type,
    };
  }
}
