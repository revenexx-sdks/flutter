part of '../../models.dart';

/// 
class CartExportRequest implements Model {
    /// Ad-hoc export format (only without profile_id).
    final enums.CartExportFormat? format;

    /// Export profile to run; ad-hoc JSON/CSV export when omitted.
    final String? profile_id;

    CartExportRequest({
        this.format,
        this.profile_id,
    });

    factory CartExportRequest.fromMap(Map<String, dynamic> map) {
        return CartExportRequest(
            format: map['format'] != null ? enums.CartExportFormat.values.firstWhere((e) => e.value == map['format']) : null,
            profile_id: map['profile_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "format": format?.value,
            "profile_id": profile_id,
        };
    }
}
