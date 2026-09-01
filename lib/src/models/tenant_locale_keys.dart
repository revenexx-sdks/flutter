part of '../../models.dart';

/// One locale somewhere in this tenant, its read and write keys, and the markets that asked for it.
class TenantLocaleKeys implements Model {
    /// The locale this entry is about, as some market registered it.
    final String? code;

    /// Its language part, which is also the key under language granularity.
    final String? language;

    /// Codes of the markets that registered this locale, sorted — who a baseline translation written here is actually for. An editor that lists six inputs without saying who needs them invites translations nobody will ever read.
    final List<String>? markets;

    /// Keys to try in order until one holds text — the same resolved order the per-market answer gives, so a baseline value and a market value can never be keyed differently.
    final List<String>? read;

    /// A key inside a labels bag: a full locale ('de-DE') under regional granularity, a bare language ('de') under language granularity.
    final String? write;

    TenantLocaleKeys({
        this.code,
        this.language,
        this.markets,
        this.read,
        this.write,
    });

    factory TenantLocaleKeys.fromMap(Map<String, dynamic> map) {
        return TenantLocaleKeys(
            code: map['code']?.toString(),
            language: map['language']?.toString(),
            markets: List.from(map['markets'] ?? []),
            read: List.from(map['read'] ?? []),
            write: map['write']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "language": language,
            "markets": markets,
            "read": read,
            "write": write,
        };
    }
}
