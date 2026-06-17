part of '../../models.dart';

/// No payload — releasing the hold is a pure state transition.
class OrderUnholdRequest implements Model {
    OrderUnholdRequest(
    );

    factory OrderUnholdRequest.fromMap(Map<String, dynamic> map) {
        return OrderUnholdRequest(
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
        };
    }
}
