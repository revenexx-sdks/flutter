part of '../../models.dart';

/// The read and write keys for one of the market's locales, already resolved from the two settings.
class MarketLocaleKeys implements Model {
  /// The market's locale this entry is about.
  final String? code;

  /// Its language part, which is also the key under language granularity.
  final String? language;

  /// Keys to try in order until one holds text. Always starts at the exact code: a fallback fills a gap, it never outranks a stored value.
  final List<String>? read;

  /// A key inside a labels bag: a full locale ('de-DE') under regional granularity, a bare language ('de') under language granularity.
  final String? write;

  MarketLocaleKeys({
    this.code,
    this.language,
    this.read,
    this.write,
  });

  factory MarketLocaleKeys.fromMap(Map<String, dynamic> map) {
    return MarketLocaleKeys(
      code: map['code']?.toString(),
      language: map['language']?.toString(),
      read: List.from(map['read'] ?? []),
      write: map['write']?.toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "code": code,
      "language": language,
      "read": read,
      "write": write,
    };
  }
}
