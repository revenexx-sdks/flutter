part of '../../models.dart';

/// One parcel, resolved into a tracking link by the carrier that owns the URL format.
class ShippingTrackingRequest implements Model {
  /// Carrier code (what an order shipment already stores) or the carrier row id — a value matching the uuid form is read as the id, anything else as a code, case-insensitively. Must name a carrier THIS tenant keeps; one that does not is a 404.
  final String carrier;

  /// Destination ISO 3166-1 alpha-2 code — only needed by a template that names {country}. Upper-cased before substitution.
  final String? country;

  /// Destination postcode — only needed by a template that names {postal_code}.
  final String? postal_code;

  /// The carrier's tracking number. Required by every template that names {tracking_code}, which is all of them in the shipped catalog. URL-encoded before substitution, so a code with a space or a slash cannot reshape the link.
  final String? tracking_code;

  ShippingTrackingRequest({
    required this.carrier,
    this.country,
    this.postal_code,
    this.tracking_code,
  });

  factory ShippingTrackingRequest.fromMap(Map<String, dynamic> map) {
    return ShippingTrackingRequest(
      carrier: map['carrier'].toString(),
      country: map['country']?.toString(),
      postal_code: map['postal_code']?.toString(),
      tracking_code: map['tracking_code']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "carrier": carrier,
      "country": country,
      "postal_code": postal_code,
      "tracking_code": tracking_code,
    };
  }
}
