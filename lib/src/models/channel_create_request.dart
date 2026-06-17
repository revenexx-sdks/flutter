part of '../../models.dart';

/// 
class ChannelCreateRequest implements Model {
    /// Stable channel code, unique per tenant (e.g. shop, punchout-acme).
    final String code;

    /// Mark as the default channel (default false).
    final bool? is_default;

    /// Localized display names keyed by locale.
    final Map? labels;

    /// Display name.
    final String name;

    /// Sort position (default 0).
    final int? position;

    /// Lifecycle status (default &#039;active&#039;).
    final enums.ChannelStatus? status;

    /// Where business happens (default &#039;storefront&#039;).
    final enums.ChannelType? type;

    ChannelCreateRequest({
        required this.code,
        this.is_default,
        this.labels,
        required this.name,
        this.position,
        this.status,
        this.type,
    });

    factory ChannelCreateRequest.fromMap(Map<String, dynamic> map) {
        return ChannelCreateRequest(
            code: map['code'].toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            name: map['name'].toString(),
            position: map['position'],
            status: map['status'] != null ? enums.ChannelStatus.values.firstWhere((e) => e.value == map['status']) : null,
            type: map['type'] != null ? enums.ChannelType.values.firstWhere((e) => e.value == map['type']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "is_default": is_default,
            "labels": labels,
            "name": name,
            "position": position,
            "status": status?.value,
            "type": type?.value,
        };
    }
}
