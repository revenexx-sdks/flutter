part of '../../enums.dart';

enum ShippingTaxContextVia {
  tenantDefault(value: 'tenant_default');

  const ShippingTaxContextVia({required this.value});

  final String value;

  String toJson() => value;
}
