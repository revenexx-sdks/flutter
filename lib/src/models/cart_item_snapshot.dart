part of '../../models.dart';

/// The product as the buyer was shown it when this line was added — the cart's own copy, so it stays honest when the catalogue moves underneath it. Free-form apart from the price: conversion reads `unit_price` (or `price` as a fallback) and nothing else. A snapshot without a readable price leaves the line alone in both price modes, which is deliberate — a missing snapshot must never be read as "free".
class CartItemSnapshot implements Model {
  /// The older spelling of the same thing, read only when `unit_price` is absent.
  final double? price;

  /// The net unit price the buyer was shown. This is what carts.order books the line on under price_snapshot_mode = snapshot, and what it rewrites under = live.
  final double? unit_price;

  final Map<String, dynamic> data;

  CartItemSnapshot({
    this.price,
    this.unit_price,
    required this.data,
  });

  factory CartItemSnapshot.fromMap(Map<String, dynamic> map) {
    return CartItemSnapshot(
      price: map['price']?.toDouble(),
      unit_price: map['unit_price']?.toDouble(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "price": price,
      "unit_price": unit_price,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
