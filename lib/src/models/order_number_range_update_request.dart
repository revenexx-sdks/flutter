part of '../../models.dart';

/// Partial update — omitted fields keep their current value.
class OrderNumberRangeUpdateRequest implements Model {
    /// 
    final String? channel_id;

    /// Range key drawn by the app (&#039;order&#039;, &#039;delivery&#039;, &#039;return&#039;) — unique per tenant.
    final String? code;

    /// Current counter value (default 0) — the next number draws counter+step.
    final int? counter;

    /// Free-form metadata.
    final Map? metadata;

    /// Zero-padding width of the counter (default 6).
    final int? padding;

    /// Position numbering increment for order items (default 10).
    final int? position_step;

    /// Default &#039;&#039;.
    final String? prefix;

    /// Counter increment per drawn number (default 1).
    final int? step;

    /// Default &#039;&#039;.
    final String? suffix;

    OrderNumberRangeUpdateRequest({
        this.channel_id,
        this.code,
        this.counter,
        this.metadata,
        this.padding,
        this.position_step,
        this.prefix,
        this.step,
        this.suffix,
    });

    factory OrderNumberRangeUpdateRequest.fromMap(Map<String, dynamic> map) {
        return OrderNumberRangeUpdateRequest(
            channel_id: map['channel_id']?.toString(),
            code: map['code']?.toString(),
            counter: map['counter'],
            metadata: map['metadata'],
            padding: map['padding'],
            position_step: map['position_step'],
            prefix: map['prefix']?.toString(),
            step: map['step'],
            suffix: map['suffix']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "channel_id": channel_id,
            "code": code,
            "counter": counter,
            "metadata": metadata,
            "padding": padding,
            "position_step": position_step,
            "prefix": prefix,
            "step": step,
            "suffix": suffix,
        };
    }
}
