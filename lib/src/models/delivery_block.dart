part of '../../models.dart';

/// One block, ready to render: props resolved for the requested language, library references already expanded, scheduled blocks already filtered out.
class DeliveryBlock implements Model {
    /// The block type. This is what a theme switches its component on.
    final String? bundle;

    /// Nested blocks keyed by the field they sit in — `{ "columns": [...] }`. Empty object on a leaf block.
    final Map<String, dynamic>? children;

    /// The theme fragment to render instead of a props-driven component. Theme-defined, like a bundle.
    final String? fragmentName;

    /// The library item this block came from, or `null`. Its content is already inlined above — this is for cache invalidation and editor links, not for a second fetch.
    final String? libraryItemId;

    /// Display options for this block, as a flat `option key → value` map.
    final Map<String, dynamic>? options;

    /// The block's field values for the requested language, source values already overlaid with that language's overrides. Theme-defined keys.
    final Map<String, dynamic>? props;

    /// The block uuid — stable across publishes, so it is safe to use as a render key or an anchor.
    final String? uuid;

    DeliveryBlock({
        this.bundle,
        this.children,
        this.fragmentName,
        this.libraryItemId,
        this.options,
        this.props,
        this.uuid,
    });

    factory DeliveryBlock.fromMap(Map<String, dynamic> map) {
        return DeliveryBlock(
            bundle: map['bundle']?.toString(),
            children: map['children'],
            fragmentName: map['fragmentName']?.toString(),
            libraryItemId: map['libraryItemId']?.toString(),
            options: map['options'],
            props: map['props'],
            uuid: map['uuid']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "bundle": bundle,
            "children": children,
            "fragmentName": fragmentName,
            "libraryItemId": libraryItemId,
            "options": options,
            "props": props,
            "uuid": uuid,
        };
    }
}
