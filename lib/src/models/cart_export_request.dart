part of '../../models.dart';

/// 
class CartExportRequest implements Model {
    /// Format of an ad-hoc export, read only when no profile_id is sent. 'json' returns the whole `{cart, items}` document, 'csv' the lines alone. Default 'json'.
    final enums.CartExportFormat? format;

    /// The export profile to run — one of the ids `GET /carts/io/profiles?direction=export` lists. Omit it for an ad-hoc export in the canonical shape, which is what `format` is for.
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
