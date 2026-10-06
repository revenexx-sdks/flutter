part of '../revenexx.dart';

/// The role catalogue and the tenant&#039;s own role-to-permission mapping. A role
/// is held by a CONTACT and applies inside that contact&#039;s organization; there
/// is no global customer role. Permissions are DERIVED from the role on every
/// read and never stored per contact, so a role change takes effect
/// immediately and can never leave a stale grant behind. Five built-in roles
/// answer for a tenant that has written none of its own down; seeding them and
/// replacing a role&#039;s permission set are the two writes. What one PERSON ends
/// up holding is read in Contacts.
class CustomersRoles extends Service {
  /// Initializes a [CustomersRoles] service
  CustomersRoles(super.client);

  /// The whole catalogue in one read: every role a contact of this tenant can
  /// hold, the permissions each one grants, and the built-in permission
  /// vocabulary those grants are drawn from. Roles are held by a CONTACT and
  /// apply inside that contact's organization; there is no global customer role.
  /// Permissions are derived from the role at read time and never stored per
  /// contact, so a role change takes effect immediately and cannot leave a stale
  /// grant. The role to permission MAPPING is per tenant and configurable (PUT
  /// /customers/roles/{key}/permissions); a tenant that has not configured
  /// anything gets the built-ins and 'source' says which of the two answered.
  /// Built-in roles, least to most privileged: viewer (Viewer), requester
  /// (Requester), buyer (Buyer), approver (Approver), admin (Administrator). The
  /// permission KEYS themselves come from the cross-app ledger — every
  /// installed app declares what it enforces — so a tenant may grant a key
  /// this list does not mention.
  Future<models.RoleCatalogResponse> customersRolesList() async {
    const String apiPath = '/v1/customers/roles';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.RoleCatalogResponse.fromMap(res.data);
  }

  /// Idempotent: a role that already exists is left completely alone, its
  /// permissions included, so re-seeding never undoes a merchant's edits.
  /// Creates viewer, requester, buyer, approver, admin with the built-in
  /// mapping. A tenant that never calls this still behaves correctly — the
  /// catalogue and every permission read fall back to the same built-ins.
  Future<models.Error> customersRolesDefaults({required Map data}) async {
    const String apiPath = '/v1/customers/roles/defaults';

    final Map<String, dynamic> apiParams = {
      'data': data,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The whole new set in one call — the shape a role editor actually
  /// produces, and the one that cannot leave a half-applied grant behind if a
  /// second call fails. Seeds the built-in roles first when the tenant has none,
  /// so editing works without calling /defaults. Permission keys are free text
  /// on purpose: they belong to whichever app declared them, and a grant for an
  /// app that is not installed simply has nothing to act on.
  Future<models.Error> customersRolesPermissionsReplace(
      {required String key, required List<String> permissions}) async {
    final String apiPath =
        '/v1/customers/roles/{key}/permissions'.replaceAll('{key}', key);

    final Map<String, dynamic> apiParams = {
      'permissions': permissions,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}
