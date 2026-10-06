part of '../../models.dart';

/// The order that was created, with its positions. A placement has no shipments, returns or cancellations yet — read GET /orders/{id} for the aggregate.
class OrderPlaced implements Model {
  /// When the fulfilling system took the order over. Written once. While it is null the order can still be modified here; afterwards modification goes through that system, unless the tenant sets allow_modification_after_acknowledge.
  final String? acknowledged_at;

  /// The invoice address, FROZEN at place-time. Changing the customer's address afterwards does not change what this order was billed to.
  final Map<String, dynamic>? billing_address;

  /// The ordering party as it was at place-time, FROZEN: a copy, not a reference, so the order still reads correctly after the customer record is renamed, merged or deleted. The caller decides what goes in; this app stores it and reads nothing out of it.
  final Map<String, dynamic>? buyer;

  /// When the order was cancelled, whether by a full cancel or by the last open quantity being cancelled position by position. Null otherwise.
  final String? cancelled_at;

  /// The cart this order was placed from, when a storefront handed one over. A reference across an app boundary (the carts app), not a foreign key — nothing here checks that it resolves. Null for an order an integration or an operator created.
  final String? cart_id;

  /// The sales channel the order arrived through — webshop, app, phone desk, EDI. Null when the caller named none.
  final String? channel_id;

  /// When the order was closed — by a full shipment, by payment or by hand, depending on the tenant's auto_complete_on. Null until then.
  final String? completed_at;

  /// The PERSON who ordered — a contact in the customers app. Resolved from the acting principal whenever the caller carries one, and a body value that disagrees is refused rather than silently overridden. Null for a guest checkout.
  final String? contact_id;

  /// When the order row was written. For a placed order this is placed_at; for a requested one it is when the request was submitted.
  final String? created_at;

  /// ISO 4217 code of EVERY amount on this order. Frozen at place-time from the market's default_currency unless the caller named one. Nothing on this order is ever converted, and the approval threshold is read in this currency — which is why the threshold is a per-market setting.
  final String? currency;

  /// The BUYER's own reference — their purchase-order number. Free text, not unique, never generated here: it exists so the paperwork can carry the number the buyer's accounts payable will look for. One of the few fields PUT /orders/{id} may still change.
  final String? customer_order_number;

  /// The FULFILLING system's reference for this order, typically the ERP order number. Written once by POST /orders/{id}/acknowledge and null until an integration acknowledged it.
  final String? external_ref;

  /// Whether the order has SHIPPED, and the one dimension nobody writes: it is DERIVED after every quantity change from the positions' own bookkeeping. 'fulfilled' means shipped >= ordered − cancelled across all positions, 'partial' means something went out. Sending it has no effect; ship, cancel or return something and it moves.
  final enums.OrderFulfillmentStatus? fulfillment_status;

  /// What the buyer owes: subtotal + shipping_total + tax_total, COMPUTED by this app and NEVER taken from the caller — trusting a supplied total is how inconsistent orders happened. This is the number the approval threshold is compared against and the number the revenue rollup sums.
  final double? grand_total;

  /// Why the order is held, in the words the shipping guard quotes back. Null when it is not held — releasing a hold clears it.
  final String? hold_reason;

  /// Primary key of the order, and the id every other route takes. Not the order number.
  final String? id;

  /// The summed ORDERED quantity over all positions, rounded to a whole number — a headline figure for a list, computed once at place-time. It is deliberately not reduced when something is cancelled or returned; the positions carry that arithmetic.
  final int? item_count;

  /// The created positions, numbered in steps of the order range position_step unless the caller set them.
  final List<OrderItem>? items;

  /// Free-form data belonging to the INTEGRATION side — an ERP's own bookkeeping about this order. Stored and returned untouched; nothing here reads it.
  final Map<String, dynamic>? metadata;

  /// The order number a human quotes — drawn from the tenant's order range at place-time, unique per tenant and never reused. It is NOT the id: every route addresses an order by uuid, and GET /orders?number=… is how a number becomes one.
  final String? number;

  /// A business stop, ORTHOGONAL to status: a held order keeps its lifecycle state and is refused at the guards. How far the hold reaches is the tenant's call (on_hold_blocks: shipping only, shipping and cancellation, or nothing at all).
  final bool? on_hold;

  /// The COMPANY the order is booked on — an organization in the customers app, and the B2B half of who ordered. This is what orders.reports.customer-rollup aggregates by and what makes an order visible to a buyer's colleagues. Null on a private or guest order, which the rollup counts separately because it cannot attribute it.
  final String? organization_id;

  /// The payment arrangement as it was chosen, FROZEN. This app reads exactly two keys and stores the rest untouched: 'status' seeds payment_status at place-time when it names one of the permitted values (anything else is ignored and the order starts 'open'), and 'payment_id' is merged in by POST /orders/{id}/payment-status. The method itself, its provider fields and any redirect state belong to the payments app.
  final Map<String, dynamic>? payment;

  /// Whether the order is PAID, and the dimension this app does not decide: it is fed from outside through POST /orders/{id}/payment-status (the payments app or an ERP), and only seeded at place-time from payment.status. Orthogonal to the lifecycle — a completed order can still be open, and a paid one can still be pending.
  final enums.OrderPaymentStatus? payment_status;

  /// When the order was PLACED. Null while it is pending approval: an order awaiting sign-off exists but was never placed, and that is exactly the difference this field records.
  final String? placed_at;

  /// The shipping arrangement as it was chosen, FROZEN. Two keys are READ at place-time and feed the totals: 'price' becomes shipping_total (the shipping_total field is only the fallback when this is absent) and 'tax_rate' is what shipping is taxed at, because shipping is a Nebenleistung and is taxed too. Everything else — the carrier product, the delivery window, the pickup point — is stored untouched and belongs to the shipping app.
  final Map<String, dynamic>? shipping;

  /// The delivery address, FROZEN at place-time — what goes on the label of every shipment of this order. Null on an order that is never delivered (a service, a digital item, a collection).
  final Map<String, dynamic>? shipping_address;

  /// NET shipping cost, taken from shipping.price or, when the snapshot carries no price, from the request's shipping_total. In `currency`.
  final double? shipping_total;

  /// Where the order stands in its LIFECYCLE, and one of three independent status dimensions. 'pending' = created but not placed, an order waiting for approval; 'placed' = accepted, nothing shipped; 'in_fulfillment' = part of it has gone out, or all of it has and the tenant does not close on shipment; 'completed' and 'cancelled' end it. Moved by the action routes only — it is not writable through PUT /orders/{id}.
  final enums.OrderStatus? status;

  /// NET total of the positions (the sum of their line_total), COMPUTED here at place-time. In `currency`, four decimal places. A caller cannot set it.
  final double? subtotal;

  /// All tax on this order: the positions' tax_amount plus the tax on shipping (shipping_total × shipping.tax_rate). COMPUTED here — a caller cannot set it.
  final double? tax_total;

  /// When any column of the order last changed — every status move, every re-derived fulfillment, every modification.
  final String? updated_at;

  /// Free-form data belonging to the ORDERING side — carried through from the storefront or the cart and handed back untouched. One of the few fields PUT /orders/{id} may still change.
  final Map<String, dynamic>? user_data;

  OrderPlaced({
    this.acknowledged_at,
    this.billing_address,
    this.buyer,
    this.cancelled_at,
    this.cart_id,
    this.channel_id,
    this.completed_at,
    this.contact_id,
    this.created_at,
    this.currency,
    this.customer_order_number,
    this.external_ref,
    this.fulfillment_status,
    this.grand_total,
    this.hold_reason,
    this.id,
    this.item_count,
    this.items,
    this.metadata,
    this.number,
    this.on_hold,
    this.organization_id,
    this.payment,
    this.payment_status,
    this.placed_at,
    this.shipping,
    this.shipping_address,
    this.shipping_total,
    this.status,
    this.subtotal,
    this.tax_total,
    this.updated_at,
    this.user_data,
  });

  factory OrderPlaced.fromMap(Map<String, dynamic> map) {
    return OrderPlaced(
      acknowledged_at: map['acknowledged_at']?.toString(),
      billing_address: map['billing_address'],
      buyer: map['buyer'],
      cancelled_at: map['cancelled_at']?.toString(),
      cart_id: map['cart_id']?.toString(),
      channel_id: map['channel_id']?.toString(),
      completed_at: map['completed_at']?.toString(),
      contact_id: map['contact_id']?.toString(),
      created_at: map['created_at']?.toString(),
      currency: map['currency']?.toString(),
      customer_order_number: map['customer_order_number']?.toString(),
      external_ref: map['external_ref']?.toString(),
      fulfillment_status: map['fulfillment_status'] != null
          ? enums.OrderFulfillmentStatus.values
              .firstWhere((e) => e.value == map['fulfillment_status'])
          : null,
      grand_total: map['grand_total']?.toDouble(),
      hold_reason: map['hold_reason']?.toString(),
      id: map['id']?.toString(),
      item_count: map['item_count'],
      items: map['items'] != null
          ? List<OrderItem>.from(map['items'].map((p) => OrderItem.fromMap(p)))
          : null,
      metadata: map['metadata'],
      number: map['number']?.toString(),
      on_hold: map['on_hold'],
      organization_id: map['organization_id']?.toString(),
      payment: map['payment'],
      payment_status: map['payment_status'] != null
          ? enums.OrderPaymentStatus.values
              .firstWhere((e) => e.value == map['payment_status'])
          : null,
      placed_at: map['placed_at']?.toString(),
      shipping: map['shipping'],
      shipping_address: map['shipping_address'],
      shipping_total: map['shipping_total']?.toDouble(),
      status: map['status'] != null
          ? enums.OrderStatus.values.firstWhere((e) => e.value == map['status'])
          : null,
      subtotal: map['subtotal']?.toDouble(),
      tax_total: map['tax_total']?.toDouble(),
      updated_at: map['updated_at']?.toString(),
      user_data: map['user_data'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "acknowledged_at": acknowledged_at,
      "billing_address": billing_address,
      "buyer": buyer,
      "cancelled_at": cancelled_at,
      "cart_id": cart_id,
      "channel_id": channel_id,
      "completed_at": completed_at,
      "contact_id": contact_id,
      "created_at": created_at,
      "currency": currency,
      "customer_order_number": customer_order_number,
      "external_ref": external_ref,
      "fulfillment_status": fulfillment_status?.value,
      "grand_total": grand_total,
      "hold_reason": hold_reason,
      "id": id,
      "item_count": item_count,
      "items": items?.map((p) => p.toMap()).toList(),
      "metadata": metadata,
      "number": number,
      "on_hold": on_hold,
      "organization_id": organization_id,
      "payment": payment,
      "payment_status": payment_status?.value,
      "placed_at": placed_at,
      "shipping": shipping,
      "shipping_address": shipping_address,
      "shipping_total": shipping_total,
      "status": status?.value,
      "subtotal": subtotal,
      "tax_total": tax_total,
      "updated_at": updated_at,
      "user_data": user_data,
    };
  }
}
