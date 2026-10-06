part of '../../models.dart';

/// Phones List
class PhoneList implements Model {
  /// List of phones.
  final List<Phone> phones;

  /// Total number of phones that matched your query.
  final int total;

  PhoneList({
    required this.phones,
    required this.total,
  });

  factory PhoneList.fromMap(Map<String, dynamic> map) {
    return PhoneList(
      phones: List<Phone>.from(map['phones'].map((p) => Phone.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "phones": phones.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}
