part of '../../models.dart';

/// Memberships List
class MembershipList implements Model {
  /// List of memberships.
  final List<Membership> memberships;

  /// Total number of memberships that matched your query.
  final int total;

  MembershipList({
    required this.memberships,
    required this.total,
  });

  factory MembershipList.fromMap(Map<String, dynamic> map) {
    return MembershipList(
      memberships: List<Membership>.from(
          map['memberships'].map((p) => Membership.fromMap(p))),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "memberships": memberships.map((p) => p.toMap()).toList(),
      "total": total,
    };
  }
}
