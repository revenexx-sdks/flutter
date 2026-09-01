part of '../../enums.dart';

enum PaymentFailureCode {
  providerUnavailable(value: 'provider_unavailable'),
  providerUnreachable(value: 'provider_unreachable'),
  providerNotConfigured(value: 'provider_not_configured'),
  providerDeclined(value: 'provider_declined'),
  providerError(value: 'provider_error');

  const PaymentFailureCode({required this.value});

  final String value;

  String toJson() => value;
}
