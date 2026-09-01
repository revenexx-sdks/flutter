part of '../../models.dart';

/// Everything the blökkli editor runs on, for one page in one language, materialized at the current point of the undo history. The theme adapter maps it 1:1 onto blökkli's MappedState.
class EditorState implements Model {
  /// Whether the caller may write. False means every write answers 409 until `POST …/take-ownership` — so the editor should go read-only rather than let someone type into a refusal.
  final bool? currentUserIsOwner;

  /// Every entity-reference field of every block — the fields an editor drags a product or a media item into.
  final List<Map>? droppableFieldValues;

  /// The open working copy, or `null` when nobody has started editing — in which case the state shown is simply the published one.
  final Map? editState;

  /// What the tenant's settings allow, so a client hides a control instead of discovering the refusal.
  final Map? features;

  /// The block tree, flattened into one entry per (host, field) pair. This is the list the editor renders and drops into.
  final List<Map>? fields;

  /// Analyze findings that were dismissed for this page, so the editor stops reporting them.
  final List<String>? ignoredAnalyzeIdentifiers;

  /// The language this whole state was resolved for — the `?langcode` that was applied, or the page's source language.
  final String? langcode;

  /// The page-level field values the edit state changed, merged source-then-language — `{ "title": …, "slug": …, "meta": … }`. Empty when nobody edited the page itself, only its blocks.
  final Map<String, dynamic>? mutatedEntity;

  /// The PAGE-level display options after the unpublished changes, as a flat `option key → value` map. Theme-defined.
  final Map<String, dynamic>? mutatedHostOptions;

  /// Every block's display options after the unpublished changes, keyed by block uuid: `{ "<uuid>": { "background": "grey" } }`.
  final Map<String, dynamic>? mutatedOptions;

  /// The undo/redo history, oldest first. Its length and `editState.currentIndex` are what an undo button and a history sidebar are drawn from.
  final List<Map>? mutations;

  /// The page itself, with the unpublished edits already applied — so the title here is what publishing would store, not what is stored now.
  final Map? page;

  /// Every string field of every block, flattened. It is what the translation view and the CSV export are built on — one row per translatable string.
  final List<Map>? textFieldValues;

  /// Every language this page exists in, so the editor can offer a language switcher that shows what is missing.
  final List<Map>? translations;

  /// Why publishing would be refused right now. Empty means `POST …/publish` succeeds without `force`.
  final List<Map>? violations;

  EditorState({
    this.currentUserIsOwner,
    this.droppableFieldValues,
    this.editState,
    this.features,
    this.fields,
    this.ignoredAnalyzeIdentifiers,
    this.langcode,
    this.mutatedEntity,
    this.mutatedHostOptions,
    this.mutatedOptions,
    this.mutations,
    this.page,
    this.textFieldValues,
    this.translations,
    this.violations,
  });

  factory EditorState.fromMap(Map<String, dynamic> map) {
    return EditorState(
      currentUserIsOwner: map['currentUserIsOwner'],
      droppableFieldValues: List.from(map['droppableFieldValues'] ?? []),
      editState: map['editState'],
      features: map['features'],
      fields: List.from(map['fields'] ?? []),
      ignoredAnalyzeIdentifiers:
          List.from(map['ignoredAnalyzeIdentifiers'] ?? []),
      langcode: map['langcode']?.toString(),
      mutatedEntity: map['mutatedEntity'],
      mutatedHostOptions: map['mutatedHostOptions'],
      mutatedOptions: map['mutatedOptions'],
      mutations: List.from(map['mutations'] ?? []),
      page: map['page'],
      textFieldValues: List.from(map['textFieldValues'] ?? []),
      translations: List.from(map['translations'] ?? []),
      violations: List.from(map['violations'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "currentUserIsOwner": currentUserIsOwner,
      "droppableFieldValues": droppableFieldValues,
      "editState": editState,
      "features": features,
      "fields": fields,
      "ignoredAnalyzeIdentifiers": ignoredAnalyzeIdentifiers,
      "langcode": langcode,
      "mutatedEntity": mutatedEntity,
      "mutatedHostOptions": mutatedHostOptions,
      "mutatedOptions": mutatedOptions,
      "mutations": mutations,
      "page": page,
      "textFieldValues": textFieldValues,
      "translations": translations,
      "violations": violations,
    };
  }
}
