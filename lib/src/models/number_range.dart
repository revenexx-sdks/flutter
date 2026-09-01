part of '../../models.dart';

/// A counter that issues human-readable numbers, one per series: orders, delivery notes, returns. The format is {prefix}{counter padded to padding}{suffix}, and drawing a number moves the counter.
class NumberRange implements Model {
    /// The sales channel this range was created for, as a label. It does NOT select the range: a draw finds the range by `code` alone, and the unique index (tenant, code) means one code is one range per tenant — so an order on another channel draws from the same range this one names. Null on the three seeded ranges, which is every tenant-wide range.
    final String? channel_id;

    /// Which counter this is, in the app's own words: 'order' numbers orders, 'delivery' numbers delivery notes, 'return' numbers returns. Unique per tenant, and the value the order_number_range_code / delivery_number_range_code / return_number_range_code settings point at — a setting naming a code no range carries is the 422 'number_range_missing'.
    final String? code;

    /// The last number DRAWN — state, not configuration. The next draw is counter + step and writes the new value back, so moving this forward skips numbers and moving it back re-issues them (and the unique index then answers 409).
    final int? counter;

    /// When the range was created.
    final String? created_at;

    /// Primary key of the number range.
    final String? id;

    /// Free-form data for the caller. This app stores it and returns it, and reads nothing out of it.
    final Map<String, dynamic>? metadata;

    /// How wide the counter is written, zero-padded: 6 makes 123 into 000123. 0 writes the bare number. Widening it later does not renumber what was already drawn.
    final int? padding;

    /// The gap between the position numbers of a new order: 10 numbers the lines 10, 20, 30 — room to slot a line in between later without renumbering the rest. Read from the ORDER range only.
    final int? position_step;

    /// Literal text in front of the counter: 'ORD-' turns counter 123 into ORD-000123. Empty by default.
    final String? prefix;

    /// How far the counter moves per draw. 1 is consecutive numbering; a larger step is what a merchant chooses who does not want their order volume readable off an invoice.
    final int? step;

    /// Literal text after the counter — a market or year marker on merchants who number that way. Empty by default, which is what most of them use.
    final String? suffix;

    /// When the range last changed — which includes every single number draw, because a draw writes the counter.
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
