part of '../../models.dart';

/// No fields — send `{}`. What counts as low follows each row's own `reorder_point` and the market's `reorder_point_default`, exactly as GET /inventories/reorder-alerts computes it.
class ReorderScanRequest implements Model {
    ReorderScanRequest(
    );

    factory ReorderScanRequest.fromMap(Map<String, dynamic> map) {
        return ReorderScanRequest(
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
        };
    }
}
