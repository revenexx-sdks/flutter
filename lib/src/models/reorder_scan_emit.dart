part of '../../models.dart';

///
class ReorderScanEmit implements Model {
  /// The event id on the bus. Stable per (row, day), which is what makes a re-run harmless.
  final String event_id;

  /// The stock row the event is about.
  final String stock_level_id;

  ReorderScanEmit({
    required this.event_id,
    required this.stock_level_id,
  });

  factory ReorderScanEmit.fromMap(Map<String, dynamic> map) {
    return ReorderScanEmit(
      event_id: map['event_id'].toString(),
      stock_level_id: map['stock_level_id'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "event_id": event_id,
      "stock_level_id": stock_level_id,
    };
  }
}
