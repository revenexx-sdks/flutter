part of '../../enums.dart';

enum ShippingCarrierSource {
    method(value: 'method'),
    methodCode(value: 'method_code'),
    methodText(value: 'method_text'),
    tenantDefault(value: 'tenant_default'),
    tenantDefaultText(value: 'tenant_default_text');

    const ShippingCarrierSource({
        required this.value
    });

    final String value;

    String toJson() => value;
}