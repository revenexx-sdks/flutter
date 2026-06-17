part of '../../models.dart';

/// 
class LocationCreateRequest implements Model {
    /// 
    final Map? address;

    /// Unique location code (per tenant).
    final String code;

    /// Disabled locations are skipped by availability and reserve (default true).
    final bool? enabled;

    /// Localised display names ({de, en, …}).
    final Map? labels;

    /// Free-form metadata.
    final Map? metadata;

    /// 
    final String name;

    /// Sourcing order — lower wins (default 0).
    final int? priority;

    /// Default &#039;warehouse&#039;.
    final enums.LocationType? type;

    LocationCreateRequest({
        this.address,
        required this.code,
        this.enabled,
        this.labels,
        this.metadata,
        required this.name,
        this.priority,
        this.type,
    });

    factory LocationCreateRequest.fromMap(Map<String, dynamic> map) {
        return LocationCreateRequest(
            address: map['address'],
            code: map['code'].toString(),
            enabled: map['enabled'],
            labels: map['labels'],
            metadata: map['metadata'],
            name: map['name'].toString(),
            priority: map['priority'],
            type: map['type'] != null ? enums.LocationType.values.firstWhere((e) => e.value == map['type']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "address": address,
            "code": code,
            "enabled": enabled,
            "labels": labels,
            "metadata": metadata,
            "name": name,
            "priority": priority,
            "type": type?.value,
        };
    }
}
