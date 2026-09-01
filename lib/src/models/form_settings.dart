part of '../../models.dart';

/// Everything about a form that is not a field: what the storefront renders around the inputs, what happens after a successful submit, and who is told about it. Open jsonb, so an unknown key is stored and handed back rather than refused — the keys below are the ones something actually READS, and each says which reader that is. Null on a form nobody has configured, which is not an error: every one of these has a fallback.
class FormSettings implements Model {
    /// What the storefront runs after a successful submit, in order. Executed by the cover BFF, not by this API — this app only stores them, and a workflow that wants the same event should listen to `form.submitted` instead.
    final List<FormPostSubmitAction>? actions;

    /// The language the definition itself is written in. Read by the storefront BFF, which overlays `i18n` on top of it.
    final String? default_locale;

    /// Translations for the definition, keyed by language tag and then by field name: `{"en": {"email": {"label": "Email"}}}`. Only `label`, `placeholder` and `help` are overlaid — a translation of anything else is stored and ignored. Applied by the storefront BFF before the definition reaches the browser, so the API always returns the untranslated definition.
    final Map<String, dynamic>? i18n;

    /// This form's own notification recipient, read by THIS app at insert. It beats the tenant's `notify_email` setting; null means fall back to the tenant. The storefront never sees it — the BFF hands the browser only the submit label and the success message.
    final String? notify_email;

    /// The submit button caption, read by the storefront. Null falls back to 'Submit'.
    final String? submit_label;

    /// What the visitor reads after a successful submit, read by the storefront. Null falls back to a generic thank-you.
    final String? success_message;

    final Map<String, dynamic> data;

    FormSettings({
        this.actions,
        this.default_locale,
        this.i18n,
        this.notify_email,
        this.submit_label,
        this.success_message,
        required this.data,
    });

    factory FormSettings.fromMap(Map<String, dynamic> map) {
        return FormSettings(
            actions: map['actions'] != null ? List<FormPostSubmitAction>.from(map['actions'].map((p) => FormPostSubmitAction.fromMap(p))) : null,
            default_locale: map['default_locale']?.toString(),
            i18n: map['i18n'],
            notify_email: map['notify_email']?.toString(),
            submit_label: map['submit_label']?.toString(),
            success_message: map['success_message']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "actions": actions?.map((p) => p.toMap()).toList(),
            "default_locale": default_locale,
            "i18n": i18n,
            "notify_email": notify_email,
            "submit_label": submit_label,
            "success_message": success_message,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);

    List<T> convertToActions<T>(T Function(Map) fromJson) =>
        (actions ?? const []).map((d) => d.convertTo<T>(fromJson)).toList();
}
