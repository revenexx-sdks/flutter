part of '../../models.dart';

/// No payload — send {}. Which market is promoted comes from the path, and there is nothing else to say.
class MarketMakeDefaultRequest implements Model {
    MarketMakeDefaultRequest(
    );

    factory MarketMakeDefaultRequest.fromMap(Map<String, dynamic> map) {
        return MarketMakeDefaultRequest(
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
        };
    }
}
