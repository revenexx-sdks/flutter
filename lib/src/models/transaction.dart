part of '../../models.dart';

/// Transaction
class Transaction implements Model {
    /// Transaction creation time in ISO 8601 format.
    final String $createdAt;

    /// Transaction ID.
    final String $id;

    /// Transaction update date in ISO 8601 format.
    final String $updatedAt;

    /// Expiration time in ISO 8601 format.
    final String expiresAt;

    /// Number of operations in the transaction.
    final int operations;

    /// Current status of the transaction. One of: pending, committing, committed, rolled_back, failed.
    final String status;

    Transaction({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.expiresAt,
        required this.operations,
        required this.status,
    });

    factory Transaction.fromMap(Map<String, dynamic> map) {
        return Transaction(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            expiresAt: map['expiresAt'].toString(),
            operations: map['operations'],
            status: map['status'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "expiresAt": expiresAt,
            "operations": operations,
            "status": status,
        };
    }
}
