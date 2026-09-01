part of '../../enums.dart';

enum WhatsappCategory {
    marketing(value: 'marketing'),
    utility(value: 'utility'),
    authentication(value: 'authentication'),
    service(value: 'service');

    const WhatsappCategory({
        required this.value
    });

    final String value;

    String toJson() => value;
}