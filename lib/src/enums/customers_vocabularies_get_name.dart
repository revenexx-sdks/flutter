part of '../../enums.dart';

enum CustomersVocabulariesGetName {
  addressTypes(value: 'address-types'),
  contactEventKinds(value: 'contact-event-kinds'),
  contactStatuses(value: 'contact-statuses'),
  lifecycleStages(value: 'lifecycle-stages'),
  locales(value: 'locales'),
  organizationStatuses(value: 'organization-statuses'),
  paymentTerms(value: 'payment-terms'),
  registrationStatuses(value: 'registration-statuses'),
  roles(value: 'roles'),
  ruleMatches(value: 'rule-matches'),
  segmentSources(value: 'segment-sources');

  const CustomersVocabulariesGetName({required this.value});

  final String value;

  String toJson() => value;
}
