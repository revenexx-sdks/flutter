part of '../../enums.dart';

enum ShippingTaxSource {
    method(value: 'method'),
    tenantClass(value: 'tenant_class'),
    marketDefault(value: 'market_default'),
    tenantDefault(value: 'tenant_default');

    const ShippingTaxSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}