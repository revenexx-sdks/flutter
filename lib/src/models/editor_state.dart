part of '../../models.dart';

/// The blökkli adapter state: page, translations, edit state + mutation log, materialized field lists, mutated options/entity values, text field values, droppable field values and violations.
class EditorState implements Model {
    /// 
    final bool? currentUserIsOwner;

    /// 
    final List<Map>? droppableFieldValues;

    /// 
    final Map? editState;

    /// 
    final List<Map>? fields;

    /// 
    final List<String>? ignoredAnalyzeIdentifiers;

    /// 
    final String? langcode;

    /// 
    final Map? mutatedEntity;

    /// 
    final Map? mutatedHostOptions;

    /// 
    final Map? mutatedOptions;

    /// 
    final List<Map>? mutations;

    /// 
    final Map? page;

    /// 
    final List<Map>? textFieldValues;

    /// 
    final List<Map>? translations;

    /// 
    final List<Map>? violations;

    EditorState({
        this.currentUserIsOwner,
        this.droppableFieldValues,
        this.editState,
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
            fields: List.from(map['fields'] ?? []),
            ignoredAnalyzeIdentifiers: List.from(map['ignoredAnalyzeIdentifiers'] ?? []),
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
