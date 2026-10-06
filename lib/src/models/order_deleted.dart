part of '../../models.dart';

/// The row is gone. Deleting is not idempotent here: a second call answers 404, because the row no longer resolves.
class OrderDeleted implements Model {
  /// Always true — a failed delete is a status code, not a false here.
  final bool? deleted;

  /// The id of the row that was deleted, echoed back.
  final String? id;

  OrderDeleted({
    this.deleted,
    this.id,
  });

  factory OrderDeleted.fromMap(Map<String, dynamic> map) {
    return OrderDeleted(
      deleted: map['deleted'],
      id: map['id']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "deleted": deleted,
      "id": id,
    };
  }
}
