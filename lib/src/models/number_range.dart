part of '../../models.dart';

/// 
class NumberRange implements Model {
    /// 
    final String? channel_id;

    /// 
    final String? code;

    /// 
    final int? counter;

    /// 
    final String? created_at;

    /// 
    final String? id;

    /// 
    final Map? metadata;

    /// 
    final int? padding;

    /// 
    final int? position_step;

    /// 
    final String? prefix;

    /// 
    final int? step;

    /// 
    final String? suffix;

    /// 
    final String? updated_at;

    NumberRange({
        this.channel_id,
        this.code,
        this.counter,
        this.created_at,
        this.id,
        this.metadata,
        this.padding,
        this.position_step,
        this.prefix,
        this.step,
        this.suffix,
        this.updated_at,
    });

    factory NumberRange.fromMap(Map<String, dynamic> map) {
        return NumberRange(
            channel_id: map['channel_id']?.toString(),
            code: map['code']?.toString(),
            counter: map['counter'],
            created_at: map['created_at']?.toString(),
            id: map['id']?.toString(),
            metadata: map['metadata'],
            padding: map['padding'],
            position_step: map['position_step'],
            prefix: map['prefix']?.toString(),
            step: map['step'],
            suffix: map['suffix']?.toString(),
            updated_at: map['updated_at']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channel_id": channel_id,
            "code": code,
            "counter": counter,
            "created_at": created_at,
            "id": id,
            "metadata": metadata,
            "padding": padding,
            "position_step": position_step,
            "prefix": prefix,
            "step": step,
            "suffix": suffix,
            "updated_at": updated_at,
        };
    }
}
