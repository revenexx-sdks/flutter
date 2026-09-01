part of '../../models.dart';

///
class ReorderScan implements Model {
  /// One entry per published event, in the order they went out. Re-running the scan on the same day returns the SAME ids and publishes nothing a second time — the event id is derived from the row and the day, and the bus drops the repeat.
  final List<ReorderScanEmit> emitted;

  /// false when reorder_alert_enabled is off — nothing was published, and not because nothing is low.
  final bool enabled;

  /// How many rows were at or below their point when the scan ran.
  final int scanned;

  ReorderScan({
    required this.emitted,
    required this.enabled,
    required this.scanned,
  });

  factory ReorderScan.fromMap(Map<String, dynamic> map) {
    return ReorderScan(
      emitted: List<ReorderScanEmit>.from(
          map['emitted'].map((p) => ReorderScanEmit.fromMap(p))),
      enabled: map['enabled'],
      scanned: map['scanned'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "emitted": emitted.map((p) => p.toMap()).toList(),
      "enabled": enabled,
      "scanned": scanned,
    };
  }
}
