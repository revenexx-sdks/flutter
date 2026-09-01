part of '../../models.dart';

/// One question asked of the market, its verdict, and how much the answer costs.
class MarketReadinessCheck implements Model {
    /// One sentence naming what was found and, for a warning, what covers for it.
    final String? detail;

    /// Which question. 'locales' — is there a language to render in? 'currencies' — is the base currency registered and marked default? 'tax_classes' — is there a rate to tax with? 'tax_basis' — informational, restating whether stored prices are gross or net.
    final enums.MarketReadinessCheckId? id;

    /// Whether this check passed. A false with severity `info` cannot occur — the informational check always passes.
    final bool? ok;

    /// What a failure costs. 'blocking' — the market cannot trade. 'warning' — degraded but serviceable, and `detail` names what covers for it. 'info' — a fact worth reporting that is never a failure. The severity is not fixed per check: no locales is blocking without a tenant fallback_locale and a warning with one.
    final enums.MarketReadinessSeverity? severity;

    MarketReadinessCheck({
        this.detail,
        this.id,
        this.ok,
        this.severity,
    });

    factory MarketReadinessCheck.fromMap(Map<String, dynamic> map) {
        return MarketReadinessCheck(
            detail: map['detail']?.toString(),
            id: map['id'] != null ? enums.MarketReadinessCheckId.values.firstWhere((e) => e.value == map['id']) : null,
            ok: map['ok'],
            severity: map['severity'] != null ? enums.MarketReadinessSeverity.values.firstWhere((e) => e.value == map['severity']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "detail": detail,
            "id": id?.value,
            "ok": ok,
            "severity": severity?.value,
        };
    }
}
