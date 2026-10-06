part of '../../models.dart';

///
class OrderListItem implements Model {
  /// The catalogue category the article sat in when the position was saved, as a slug. Kept so a long list can be grouped the way the shop groups it without a call to the catalogue.
  final String? category_slug;

  /// The cost centre this position books to, as the tenant's ERP names it. Free text and not our enum. It survives into the ORDER position, which has a `cost_center` column; a CART line has none, so the cart conversion carries it in the line snapshot instead.
  final String? cost_center_id;

  /// When the position was added to the list.
  final String? created_at;

  /// The buyer's OWN article number for this article — what their purchasing system calls it, which is rarely what the shop calls it. Free text, and the field a B2B buyer searches their own lists by.
  final String? custom_sku;

  /// The position, by id.
  final String? id;

  /// The article image at the time the position was saved, as a URL or a path — a snapshot like `name`, and nothing here refreshes it. It rides into the cart line and the order position in their snapshot, because neither has a column for it.
  final String? image;

  /// The list this position belongs to. Taken from the path and never from the payload — a position does not move between lists.
  final String? list_id;

  /// Free-form data the tenant keeps on the position. Never read by this app; it travels into the cart line / order position snapshot untouched. A write replaces the whole document rather than merging into it.
  final Map? metadata;

  /// The article name AS IT WAS when the position was saved. A snapshot on purpose: the list is the buyer's own record, so a renamed or withdrawn article still reads the way they wrote it down.
  final String? name;

  /// Sort order within the list, ascending — the order the positions collection returns by default and the order the conversions hand the lines over in. Neither dense nor unique: an add with no `position` of its own takes the list's current position COUNT, so removing a position from the middle and adding another leaves two rows sharing a number. A bulk replace assigns the array index the same way, so it renumbers only the positions it is not given explicitly.
  final int? position;

  /// Per-position notes the buyer wrote — an engraving, a delivery instruction, a reference for the picker. An ARRAY OF STRINGS, one entry per line; the order conversion joins them with newlines into the order position's single `position_text`, and the cart conversion carries the array in the line snapshot.
  final Map? position_texts;

  /// Unit price snapshot — what the buyer saw when they saved the position, in whatever way the catalogue quoted it. It is a record, not a live price: the cart and the order reprice on their own terms, so this never becomes what somebody is charged.
  final double? price;

  /// The catalogue product this position stands for. One of `product_id` / `sku` must be set (the database enforces it); this is the identity the products app answers to, and the one `reject_unknown_articles` and the conversions check against.
  final String? product_id;

  /// How much of the article the list holds. Greater than zero — the database refuses the rest — and fractional to three decimals, because a B2B position may be 2.5 metres or 0.75 kilos.
  final double? quantity;

  /// The article number as the catalogue knows it — the alternative identity to `product_id`, and the one an ERP integration usually joins on.
  final String? sku;

  /// The catalogue subcategory, as a slug. Same purpose as `category_slug`, one level down.
  final String? subcategory_slug;

  /// The VAT rate that applied when the position was saved, as a PERCENT (19 = 19 %). Four decimals so a rate like 8.25 % survives; carts and orders document the same field the same way, and the conversion forwards the number unchanged.
  final double? tax_rate;

  /// The tenant this row belongs to, as a slug. Set by the platform, never by a caller — it is the row-level security scope, not a field, and every row a request can reach is inside it already.
  final String? tenant_id;

  /// The unit `quantity` counts in, in the tenant's own words. Deliberately open text and deliberately NOT a vocabulary: a B2B catalogue units in pieces, metres, kilos, rolls and pallets, and any closed list published here would be a guess.
  final String? unit;

  /// When the position was last changed.
  final String? updated_at;

  OrderListItem({
    this.category_slug,
    this.cost_center_id,
    this.created_at,
    this.custom_sku,
    this.id,
    this.image,
    this.list_id,
    this.metadata,
    this.name,
    this.position,
    this.position_texts,
    this.price,
    this.product_id,
    this.quantity,
    this.sku,
    this.subcategory_slug,
    this.tax_rate,
    this.tenant_id,
    this.unit,
    this.updated_at,
  });

  factory OrderListItem.fromMap(Map<String, dynamic> map) {
    return OrderListItem(
      category_slug: map['category_slug']?.toString(),
      cost_center_id: map['cost_center_id']?.toString(),
      created_at: map['created_at']?.toString(),
      custom_sku: map['custom_sku']?.toString(),
      id: map['id']?.toString(),
      image: map['image']?.toString(),
      list_id: map['list_id']?.toString(),
      metadata: map['metadata'],
      name: map['name']?.toString(),
      position: map['position'],
      position_texts: map['position_texts'],
      price: map['price']?.toDouble(),
      product_id: map['product_id']?.toString(),
      quantity: map['quantity']?.toDouble(),
      sku: map['sku']?.toString(),
      subcategory_slug: map['subcategory_slug']?.toString(),
      tax_rate: map['tax_rate']?.toDouble(),
      tenant_id: map['tenant_id']?.toString(),
      unit: map['unit']?.toString(),
      updated_at: map['updated_at']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "category_slug": category_slug,
      "cost_center_id": cost_center_id,
      "created_at": created_at,
      "custom_sku": custom_sku,
      "id": id,
      "image": image,
      "list_id": list_id,
      "metadata": metadata,
      "name": name,
      "position": position,
      "position_texts": position_texts,
      "price": price,
      "product_id": product_id,
      "quantity": quantity,
      "sku": sku,
      "subcategory_slug": subcategory_slug,
      "tax_rate": tax_rate,
      "tenant_id": tenant_id,
      "unit": unit,
      "updated_at": updated_at,
    };
  }
}
