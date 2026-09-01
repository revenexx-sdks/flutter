part of '../../models.dart';

/// No payload — send {}. The kind is named by the path, and there is nothing else to decide.
class OrderListKindMakeDefaultRequest implements Model {
    OrderListKindMakeDefaultRequest(
    );

    factory OrderListKindMakeDefaultRequest.fromMap(Map<String, dynamic> map) {
        return OrderListKindMakeDefaultRequest(
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
        };
    }
}
