part of '../../models.dart';

/// Metric
class Metric implements Model {
  /// The date at which this metric was aggregated in ISO 8601 format.
  final String date;

  /// The value of this metric at the timestamp.
  final int value;

  Metric({
    required this.date,
    required this.value,
  });

  factory Metric.fromMap(Map<String, dynamic> map) {
    return Metric(
      date: map['date'].toString(),
      value: map['value'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "date": date,
      "value": value,
    };
  }
}
