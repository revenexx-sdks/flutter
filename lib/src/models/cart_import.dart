part of '../../models.dart';

/// `cart` is the cart as it now stands, totals already recomputed — the newly created one, or the target with the imported lines folded in.
class CartImport implements Model {
  ///
  final Cart? cart;

  /// Lines read out of the payload. Identical product lines merge, so the cart may have gained fewer rows than this.
  final int? imported_lines;

  CartImport({
    this.cart,
    this.imported_lines,
  });

  factory CartImport.fromMap(Map<String, dynamic> map) {
    return CartImport(
      cart: map['cart'] != null ? Cart.fromMap(map['cart']) : null,
      imported_lines: map['imported_lines'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "cart": cart?.toMap(),
      "imported_lines": imported_lines,
    };
  }
}
