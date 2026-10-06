part of '../../models.dart';

/// The list as it now stands: everything that was there is gone and these are the rows that took its place.
class PriceEntriesReplaceResponse implements Model {
  /// The complete new entry set, as stored — including the ids and timestamps the database filled in.
  final List<PriceEntry>? entries;

  PriceEntriesReplaceResponse({
    this.entries,
  });

  factory PriceEntriesReplaceResponse.fromMap(Map<String, dynamic> map) {
    return PriceEntriesReplaceResponse(
      entries: map['entries'] != null
          ? List<PriceEntry>.from(
              map['entries'].map((p) => PriceEntry.fromMap(p)))
          : null,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "entries": entries?.map((p) => p.toMap()).toList(),
    };
  }
}
