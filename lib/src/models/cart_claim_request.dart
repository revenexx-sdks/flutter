part of '../../models.dart';

/// 
class CartClaimRequest implements Model {
    /// Contact taking ownership.
    final String contact_id;

    /// Guest session whose active carts are handed over.
    final String session_key;

    /// Merge the session carts into this cart instead of adopting them.
    final String? target_cart_id;

    CartClaimRequest({
        required this.contact_id,
        required this.session_key,
        this.target_cart_id,
    });

    factory CartClaimRequest.fromMap(Map<String, dynamic> map) {
        return CartClaimRequest(
            contact_id: map['contact_id'].toString(),
            session_key: map['session_key'].toString(),
            target_cart_id: map['target_cart_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "contact_id": contact_id,
            "session_key": session_key,
            "target_cart_id": target_cart_id,
        };
    }
}
