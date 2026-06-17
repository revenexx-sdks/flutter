part of '../../models.dart';

/// Published page resolved for one language: nested block tree with i18n fallback applied and scheduled blocks filtered.
class DeliveryPage implements Model {
    /// Field name → ordered block list ({ uuid, bundle, props, options, children }).
    final Map? fields;

    /// 
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
