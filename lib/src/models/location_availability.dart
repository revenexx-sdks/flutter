part of '../../models.dart';

/// What one location holds of this item. Only enabled locations appear, and only those with a stock row for the item — a location that has never held it is absent rather than zero.
class LocationAvailability implements Model {
  /// on_hand − reserved at this location — what this one place can still promise.
  final double? available;

  /// The location CODE (`locations.code`) — the same value `location_code` takes in a request. Falls back to the raw location id in the rare case where the location row disappeared between the two reads.
  final String? location;

  /// Physically at this location, promised units included.
  final double? on_hand;

  /// Held for orders at this location.
  final double? reserved;

  LocationAvailability({
    this.available,
    this.location,
    this.on_hand,
    this.reserved,
  });

  factory LocationAvailability.fromMap(Map<String, dynamic> map) {
    return LocationAvailability(
      available: map['available']?.toDouble(),
      location: map['location']?.toString(),
      on_hand: map['on_hand']?.toDouble(),
      reserved: map['reserved']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "available": available,
      "location": location,
      "on_hand": on_hand,
      "reserved": reserved,
    };
  }
}
