part of '../../enums.dart';

enum ContactPermissionsPermissions {
  catalogRead(value: 'catalog.read'),
  cartsManage(value: 'carts.manage'),
  ordersCreate(value: 'orders.create'),
  ordersRequest(value: 'orders.request'),
  ordersApprove(value: 'orders.approve'),
  ordersRead(value: 'orders.read'),
  addressesManage(value: 'addresses.manage'),
  contactsRead(value: 'contacts.read'),
  contactsManage(value: 'contacts.manage'),
  organizationManage(value: 'organization.manage');

  const ContactPermissionsPermissions({required this.value});

  final String value;

  String toJson() => value;
}
