part of '../../models.dart';

/// 
class PriceList implements Model {
    /// 
    final String? channel_id;

    /// 
    final String? code;

    /// 
    final String? contact_id;

    /// 
    final String? created_at;

    /// 
    final String? currency;

    /// 
    final String? description;

    /// 
    final String? id;

    /// 
    final bool? is_default;

    /// 
    final Map? labels;

    /// 
    final String? market_id;

    /// 
    final Map? metadata;

    /// 
    final String? name;

    /// 
    final String? organization_id;

    /// 
    final int? priority;

    /// 
    final String? status;

    /// 
    final bool? tax_included;

    /// 
    final String? updated_at;

    /// 
    final String? valid_from;

    /// 
    final String? valid_until;

    PriceList({
        this.channel_id,
        this.code,
        this.contact_id,
        this.created_at,
        this.currency,
        this.description,
        this.id,
        this.is_default,
        this.labels,
        this.market_id,
        this.metadata,
        this.name,
        this.organization_id,
        this.priority,
        this.status,
        this.tax_included,
        this.updated_at,
        this.valid_from,
        this.valid_until,
    });

    factory PriceList.fromMap(Map<String, dynamic> map) {
        return PriceList(
            channel_id: map['channel_id']?.toString(),
            code: map['code']?.toString(),
            contact_id: map['contact_id']?.toString(),
            created_at: map['created_at']?.toString(),
            currency: map['currency']?.toString(),
            description: map['description']?.toString(),
            id: map['id']?.toString(),
            is_default: map['is_default'],
            labels: map['labels'],
            market_id: map['market_id']?.toString(),
            metadata: map['metadata'],
            name: map['name']?.toString(),
            organization_id: map['organization_id']?.toString(),
            priority: map['priority'],
            status: map['status']?.toString(),
            tax_included: map['tax_included'],
            updated_at: map['updated_at']?.toString(),
            valid_from: map['valid_from']?.toString(),
            valid_until: map['valid_until']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channel_id": channel_id,
            "code": code,
            "contact_id": contact_id,
            "created_at": created_at,
            "currency": currency,
            "description": description,
            "id": id,
            "is_default": is_default,
            "labels": labels,
            "market_id": market_id,
            "metadata": metadata,
            "name": name,
            "organization_id": organization_id,
            "priority": priority,
            "status": status,
            "tax_included": tax_included,
            "updated_at": updated_at,
            "valid_from": valid_from,
            "valid_until": valid_until,
        };
    }
}
