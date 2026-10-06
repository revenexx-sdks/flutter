part of '../../models.dart';

/// AlgoArgon2
class AlgoArgon2 implements Model {
  /// Memory used to compute hash.
  final int memoryCost;

  /// Number of threads used to compute hash.
  final int threads;

  /// Amount of time consumed to compute hash
  final int timeCost;

  /// Algo type.
  final String type;

  AlgoArgon2({
    required this.memoryCost,
    required this.threads,
    required this.timeCost,
    required this.type,
  });

  factory AlgoArgon2.fromMap(Map<String, dynamic> map) {
    return AlgoArgon2(
      memoryCost: map['memoryCost'],
      threads: map['threads'],
      timeCost: map['timeCost'],
      type: map['type'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "memoryCost": memoryCost,
      "threads": threads,
      "timeCost": timeCost,
      "type": type,
    };
  }
}
