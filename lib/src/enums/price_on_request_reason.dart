part of '../../enums.dart';

enum PriceOnRequestReason {
  notPriced(value: 'not_priced'),
  onRequestEntry(value: 'on_request_entry'),
  anonymousDenied(value: 'anonymous_denied'),
  noIdentity(value: 'no_identity');

  const PriceOnRequestReason({required this.value});

  final String value;

  String toJson() => value;
}
