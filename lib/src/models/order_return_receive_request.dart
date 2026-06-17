part of '../../models.dart';

/// No payload — receiving is a pure state transition (registered → received).
class OrderReturnReceiveRequest implements Model {
    OrderReturnReceiveRequest(
    );

    factory OrderReturnReceiveRequest.fromMap(Map<String, dynamic> map) {
        return OrderReturnReceiveRequest(
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
        };
    }
}
