part of '../../models.dart';

///
class CartIoMappingColumn implements Model {
  /// The cart or line field, spelled as this app spells it — one of the canonical column names.
  final String from;

  /// What that field is called on the outside: the CSV header, or the JSON key of the system on the other end.
  final String to;

  CartIoMappingColumn({
    required this.from,
    required this.to,
  });

  factory CartIoMappingColumn.fromMap(Map<String, dynamic> map) {
    return CartIoMappingColumn(
      from: map['from'].toString(),
      to: map['to'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "from": from,
      "to": to,
    };
  }
}
