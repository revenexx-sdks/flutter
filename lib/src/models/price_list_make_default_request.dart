part of '../../models.dart';

/// No payload — send {}.
class PriceListMakeDefaultRequest implements Model {
  PriceListMakeDefaultRequest();

  factory PriceListMakeDefaultRequest.fromMap(Map<String, dynamic> map) {
    return PriceListMakeDefaultRequest();
  }

  @override
  Map<String, dynamic> toMap() {
    return {};
  }
}
