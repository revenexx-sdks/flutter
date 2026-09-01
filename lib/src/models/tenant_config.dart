part of '../../models.dart';

///
class TenantConfig implements Model {
  ///
  final String created_at;

  ///
  final String default_locale;

  ///
  final List defaults;

  ///
  final List delivery_reporting;

  ///
  final List locales;

  ///
  final String product;

  ///
  final String provisioned_at;

  ///
  final List quiet_hours;

  ///
  final List quotas;

  ///
  final int retention_days;

  ///
  final String support_email;

  ///
  final String tenant_id;

  ///
  final String updated_at;

  TenantConfig({
    required this.created_at,
    required this.default_locale,
    required this.defaults,
    required this.delivery_reporting,
    required this.locales,
    required this.product,
    required this.provisioned_at,
    required this.quiet_hours,
    required this.quotas,
    required this.retention_days,
    required this.support_email,
    required this.tenant_id,
    required this.updated_at,
  });

  factory TenantConfig.fromMap(Map<String, dynamic> map) {
    return TenantConfig(
      created_at: map['created_at'].toString(),
      default_locale: map['default_locale'].toString(),
      defaults: List.from(map['defaults'] ?? []),
      delivery_reporting: List.from(map['delivery_reporting'] ?? []),
      locales: List.from(map['locales'] ?? []),
      product: map['product'].toString(),
      provisioned_at: map['provisioned_at'].toString(),
      quiet_hours: List.from(map['quiet_hours'] ?? []),
      quotas: List.from(map['quotas'] ?? []),
      retention_days: map['retention_days'],
      support_email: map['support_email'].toString(),
      tenant_id: map['tenant_id'].toString(),
      updated_at: map['updated_at'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "created_at": created_at,
      "default_locale": default_locale,
      "defaults": defaults,
      "delivery_reporting": delivery_reporting,
      "locales": locales,
      "product": product,
      "provisioned_at": provisioned_at,
      "quiet_hours": quiet_hours,
      "quotas": quotas,
      "retention_days": retention_days,
      "support_email": support_email,
      "tenant_id": tenant_id,
      "updated_at": updated_at,
    };
  }
}
