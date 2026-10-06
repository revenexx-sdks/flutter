part of '../../models.dart';

/// One node of a form definition.
///
/// A definition is a FLAT ARRAY of these, and the storefront hands each one to `<FormKitSchema>` verbatim — it maps nothing, so every key FormKit understands works here whether or not it is named below (`options`, `if`, `rows`, `autocomplete`, `min`, `max`, `$cmp`, …). Three kinds of node occur:
///
///   • an INPUT node (`$formkit`) collects a value and, if it carries a `name`, contributes exactly one key to a submission's `data`;
///   • a CONTENT node (`$el`) renders markup — a paragraph of legal text, a heading — and collects nothing;
///   • a STEP MARKER (`$rxStep`) is a Revenexx extension the storefront consumes and strips before FormKit sees the node; it splits the flat array into wizard steps.
///
/// Only the four keys `name`, `label`, `placeholder` and `help` are read by Revenexx code at all (the last three are what the per-form i18n overlay translates). Everything else is FormKit's business.
class FormKitNode implements Model {
  /// A CONTENT node instead of an input: a raw element name ('p', 'h2', 'div'). It collects no value and contributes no key to `data`.
  final String? $el;

  /// An INPUT node: the FormKit input type — 'text', 'email', 'textarea', 'number', 'select', 'checkbox', 'radio', 'date', 'group', 'list', … . The set is FormKit's, not this app's, which is why nothing here enforces it and no vocabulary is published for it; the storefront adds one input of its own, `datepicker`, and three validation rules (`zip`, `companyName`, `phoneNumber`).
  final String? $formkit;

  /// A Revenexx step marker. The storefront cuts the flat array at each marker and renders the nodes that follow it as one wizard step, then removes the marker before FormKit renders anything. A definition with no marker is a single-step form.
  final FormKitStepMarker? $rxStep;

  /// The content of an `$el` node: a string of text, or nested nodes.
  final String? children;

  /// The hint under the input. Translatable.
  final String? help;

  /// What the visitor reads above the input. Translatable: the per-form i18n overlay replaces it per locale.
  final String? label;

  /// The key this input writes into a submission's `data` — `{ "$formkit": "email", "name": "email" }` here is the `"email"` key there, and that correspondence is the whole contract between a form and its inbox. A node with a non-empty `name` is a FIELD: only fields count against the tenant's `max_form_fields`, so a form with twenty paragraphs of legal text and three inputs is a three-field form. A `group` or `list` input nests, and its `name` keys the nested object or array.
  final String? name;

  /// Placeholder text inside the input. Translatable.
  final String? placeholder;

  /// A Revenexx hint about where the value comes from rather than what it looks like. 'product' means the storefront prefills this input from the page context or the query string (`?sku=…`) and renders it read-only — how a price request knows which article it is about. Stripped before FormKit renders the node.
  final String? rxKind;

  /// FormKit validation, in either notation FormKit accepts: the pipe string 'required|email', or the array form. It is enforced in the browser by FormKit — this API stores whatever `data` it is sent, so a server-side integration must not treat it as a guarantee.
  final String? validation;

  final Map<String, dynamic> data;

  FormKitNode({
    this.$el,
    this.$formkit,
    this.$rxStep,
    this.children,
    this.help,
    this.label,
    this.name,
    this.placeholder,
    this.rxKind,
    this.validation,
    required this.data,
  });

  factory FormKitNode.fromMap(Map<String, dynamic> map) {
    return FormKitNode(
      $el: map['\$el']?.toString(),
      $formkit: map['\$formkit']?.toString(),
      $rxStep: map['\$rxStep'] != null
          ? FormKitStepMarker.fromMap(map['\$rxStep'])
          : null,
      children: map['children']?.toString(),
      help: map['help']?.toString(),
      label: map['label']?.toString(),
      name: map['name']?.toString(),
      placeholder: map['placeholder']?.toString(),
      rxKind: map['rxKind']?.toString(),
      validation: map['validation']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$el": $el,
      "\$formkit": $formkit,
      "\$rxStep": $rxStep?.toMap(),
      "children": children,
      "help": help,
      "label": label,
      "name": name,
      "placeholder": placeholder,
      "rxKind": rxKind,
      "validation": validation,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
