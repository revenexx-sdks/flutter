part of '../../models.dart';

/// 
class CartClaimRequest implements Model {
    /// The contact taking ownership. Every active cart of that session ends up with this contact — adopted as it stands, or folded into `target_cart_id`.
    final String contact_id;

    /// The guest session whose active carts are handed over — the key the storefront keeps in its own session or cookie and has been sending on every anonymous call. This app neither issues nor parses it, so the example shows the shape of an opaque token and not a format anything enforces.
    final String session_key;

    /// Override the tenant's cart_merge_strategy for this call: 'merge' keeps the target cart's own lines, 'replace' clears them first. Omit to use the setting.
    final enums.CartMergeStrategy? strategy;

    /// Merge the session carts into this cart instead of adopting them.
    final String? target_cart_id;

    CartClaimRequest({
        required this.contact_id,
        required this.session_key,
        this.strategy,
        this.target_cart_id,
    });

    factory CartClaimRequest.fromMap(Map<String, dynamic> map) {
        return CartClaimRequest(
            contact_id: map['contact_id'].toString(),
            session_key: map['session_key'].toString(),
            strategy: map['strategy'] != null ? enums.CartMergeStrategy.values.firstWhere((e) => e.value == map['strategy']) : null,
            target_cart_id: map['target_cart_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "contact_id": contact_id,
            "session_key": session_key,
            "strategy": strategy?.value,
            "target_cart_id": target_cart_id,
        };
    }
}
