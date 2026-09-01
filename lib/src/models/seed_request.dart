part of '../../models.dart';

/// A theme's starting content. Both lists are optional; sending neither is a no-op.
class SeedRequest implements Model {
    /// The menus to create. One with no key or no label is reported under `skipped`.
    final List<Map>? menus;

    /// The pages to create. One that has no `slug` or no `title` is reported under `skipped` rather than refused, so one bad entry never loses the rest.
    final List<Map>? pages;

    SeedRequest({
        this.menus,
        this.pages,
    });

    factory SeedRequest.fromMap(Map<String, dynamic> map) {
        return SeedRequest(
            menus: List.from(map['menus'] ?? []),
            pages: List.from(map['pages'] ?? []),
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
