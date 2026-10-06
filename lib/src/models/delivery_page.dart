part of '../../models.dart';

/// One published page resolved for one language, ready to render: i18n fallback applied per field, blocks outside their publish window removed, library references expanded inline.
class DeliveryPage implements Model {
  /// The page's block tree, keyed by field name — `{ "content": [ … ] }`. A theme renders the field it knows and ignores the rest.
  final Map<String, dynamic>? fields;

  /// The page frame — everything a theme needs before it starts rendering blocks.
  final Map? page;

  DeliveryPage({
    this.fields,
    this.page,
  });

  factory DeliveryPage.fromMap(Map<String, dynamic> map) {
    return DeliveryPage(
      fields: map['fields'],
      page: map['page'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "fields": fields,
      "page": page,
    };
  }
}
