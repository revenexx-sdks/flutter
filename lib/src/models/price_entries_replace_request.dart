part of '../../models.dart';

///
class PriceEntriesReplaceRequest implements Model {
  /// The complete new entry set (set semantics).
  final List<PriceEntryReplaceItem> entries;

  PriceEntriesReplaceRequest({
    required this.entries,
  });

  factory PriceEntriesReplaceRequest.fromMap(Map<String, dynamic> map) {
    return PriceEntriesReplaceRequest(
      entries: List<PriceEntryReplaceItem>.from(
          map['entries'].map((p) => PriceEntryReplaceItem.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "entries": entries.map((p) => p.toMap()).toList(),
    };
  }
}
