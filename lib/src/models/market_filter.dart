part of '../../models.dart';

/// The exact-column filters this call applied, echoed back. Every value is the raw query string, never the column's own type: `?is_default=true` comes back as `"true"`. A `?column=value` naming a column this entity does not have is DROPPED rather than refused — the call answers 200 with the unfiltered list, and the key missing from here is the only way to find out.
class MarketFilter implements Model {
    /// The `code` filter as it arrived, verbatim. Present only when the call sent it.
    final String? code;

    /// The `created_at` filter as it arrived, verbatim. Present only when the call sent it. Any form the database accepts as a timestamp, including a bare date.
    final String? created_at;

    /// The `currency` filter as it arrived, verbatim. Present only when the call sent it.
    final String? currency;

    /// The `id` filter as it arrived, verbatim. Present only when the call sent it.
    final String? id;

    /// The `is_default` filter as it arrived, verbatim. Present only when the call sent it.
    final String? is_default;

    /// The `labels` filter as it arrived, verbatim. Present only when the call sent it.
    final String? labels;

    /// The `name` filter as it arrived, verbatim. Present only when the call sent it.
    final String? name;

    /// The `position` filter as it arrived, verbatim. Present only when the call sent it.
    final String? position;

    /// The `status` filter as it arrived, verbatim. Present only when the call sent it.
    final String? status;

    /// The `updated_at` filter as it arrived, verbatim. Present only when the call sent it. Any form the database accepts as a timestamp, including a bare date.
    final String? updated_at;

    MarketFilter({
        this.code,
        this.created_at,
        this.currency,
        this.id,
        this.is_default,
        this.labels,
        this.name,
        this.position,
        this.status,
        this.updated_at,
    });

    factory MarketFilter.fromMap(Map<String, dynamic> map) {
        return MarketFilter(
            code: map['code']?.toString(),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            id: map['id']?.toString(),
            is_default: map['is_default']?.toString(),
            labels: map['labels']?.toString(),
            name: map['name']?.toString(),
            position: map['position']?.toString(),
            status: map['status']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "created_at": created_at,
            "currency": currency,
            "id": id,
            "is_default": is_default,
            "labels": labels,
            "name": name,
            "position": position,
            "status": status,
            "updated_at": updated_at,
        };
    }
}
