part of '../../models.dart';

///
class CartExport implements Model {
  /// The export itself. For json: `{ "cart": { name, status, currency, channel_id, item_count, subtotal }, "items": [ … ] }` — exactly what carts.import takes back, so an export round-trips. For csv: the lines as a CSV string, header first, with jsonb columns serialized as JSON text. Deliberately untyped, because a profile's mapping renames the columns and that mapping is the caller's own.
  final String? content;

  /// A suggested download name, built as `cart-<cart id>.<format>`. Nothing is stored under it; it is there so a browser download has a name that says which cart it is.
  final String? filename;

  /// The format that ran — the profile's, or the ad-hoc one.
  final enums.CartIoFormat? format;

  CartExport({
    this.content,
    this.filename,
    this.format,
  });

  factory CartExport.fromMap(Map<String, dynamic> map) {
    return CartExport(
      content: map['content']?.toString(),
      filename: map['filename']?.toString(),
      format: map['format'] != null
          ? enums.CartIoFormat.values
              .firstWhere((e) => e.value == map['format'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "content": content,
      "filename": filename,
      "format": format?.value,
    };
  }
}
