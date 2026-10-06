part of '../../models.dart';

///
class CustomersDefaultsResponse implements Model {
  /// One entry per value set, keyed by its route name — `payment-terms`, `address-types`, `lifecycle-stages`, `contact-event-kinds`. Each says what THIS call did: `created` are the codes it inserted, `existing` the seeded codes it found already there and left completely alone (a merchant's rename included). A second call therefore answers with everything under `existing` and nothing under `created`.
  final Map? sets;

  CustomersDefaultsResponse({
    this.sets,
  });

  factory CustomersDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return CustomersDefaultsResponse(
      sets: map['sets'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "sets": sets,
    };
  }
}
