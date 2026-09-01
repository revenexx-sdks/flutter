part of '../../models.dart';

/// The block and everything under it, serialized. This is the payload: every page that references the item renders THIS tree, so editing it here changes every placement at once.
class PageBlockTree implements Model {
    /// The block type — `hero`, `text`, `teaser`, whatever the active theme defines. It decides which component renders it and which props it carries.
    final String? bundle;

    /// Nested blocks, keyed by the field they sit in — `{ "content": [...], "buttons": [...] }`. Absent on a leaf block.
    final Map<String, dynamic>? children;

    /// The theme fragment this block renders instead of a props-driven component, or `null` for an ordinary block. Theme-defined, like a bundle.
    final String? fragment_name;

    /// blökkli display options for this block, as a flat `option key → value` map (variant, spacing, background). Theme-defined, set by the `update_options` mutation.
    final Map<String, dynamic>? options;

    /// The block's field values in the page's SOURCE language, as a flat `field name → value` map. The field names are the theme's; this app stores and replays them without reading one.
    final Map<String, dynamic>? props;

    /// Per-language overrides of `props`, keyed by langcode: `{ "en": { "title": "About us" } }`. A field missing for a language falls back to `props`, which is why a half-translated page still renders.
    final Map<String, dynamic>? props_i18n;

    PageBlockTree({
        this.bundle,
        this.children,
        this.fragment_name,
        this.options,
        this.props,
        this.props_i18n,
    });

    factory PageBlockTree.fromMap(Map<String, dynamic> map) {
        return PageBlockTree(
            bundle: map['bundle']?.toString(),
            children: map['children'],
            fragment_name: map['fragment_name']?.toString(),
            options: map['options'],
            props: map['props'],
            props_i18n: map['props_i18n'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "bundle": bundle,
            "children": children,
            "fragment_name": fragment_name,
            "options": options,
            "props": props,
            "props_i18n": props_i18n,
        };
    }
}
