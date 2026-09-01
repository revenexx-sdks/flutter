part of '../../models.dart';

/// What was created and what was already there. Nothing is ever overwritten, so a non-empty `skipped` is the normal answer to a second run.
class SeedResult implements Model {
  /// The menu half of the run.
  final Map? menus;

  /// The page half of the run.
  final Map? pages;

  SeedResult({
    this.menus,
    this.pages,
  });

  factory SeedResult.fromMap(Map<String, dynamic> map) {
    return SeedResult(
      menus: map['menus'],
      pages: map['pages'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "menus": menus,
      "pages": pages,
    };
  }
}
