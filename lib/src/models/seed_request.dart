part of '../../models.dart';

/// 
class SeedRequest implements Model {
    /// 
    final List<Map>? menus;

    /// 
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
