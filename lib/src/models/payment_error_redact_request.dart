part of '../../models.dart';

///
class PaymentErrorRedactRequest implements Model {
  /// Write the reclassified values. Defaults to false, which reports what WOULD change and touches nothing.
  final bool? apply;

  /// How many payments to scan, oldest first. Defaults to 500, capped at 5000 — a tenant with more pre-taxonomy rows needs several runs, and re-running is free.
  final int? limit;

  PaymentErrorRedactRequest({
    this.apply,
    this.limit,
  });

  factory PaymentErrorRedactRequest.fromMap(Map<String, dynamic> map) {
    return PaymentErrorRedactRequest(
      apply: map['apply'],
      limit: map['limit'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "apply": apply,
      "limit": limit,
    };
  }
}
