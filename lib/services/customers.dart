part of '../revenexx.dart';

class Customers extends Service {
  /// Initializes a [Customers] service
  Customers(super.client);

  Future customersAddressesList() async {
    const String apiPath = '/v1/customers/addresses';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Address> customersAddressesCreate({required String city, required String country, required String street, required String zip, String? company, String? contactId, bool? isDefault, String? name, String? organizationId, String? phone, String? region, String? street2, enums.AddressType? type}) async {
    const String apiPath = '/v1/customers/addresses';

        final Map<String, dynamic> apiParams = {
            'city': city,

            'company': company,

            'contact_id': contactId,

            'country': country,

            if (isDefault != null) 'is_default': isDefault,

            'name': name,

            'organization_id': organizationId,

            'phone': phone,

            'region': region,

            'street': street,

            'street2': street2,

            if (type != null) 'type': type.value,

            'zip': zip,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Address.fromMap(res.data);

  }

  Future customersAddressesDelete({required String id}) async {
    final String apiPath = '/v1/customers/addresses/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Address> customersAddressesGet({required String id}) async {
    final String apiPath = '/v1/customers/addresses/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Address.fromMap(res.data);

  }

  Future<models.Address> customersAddressesUpdate({required String id, String? city, String? company, String? contactId, String? country, bool? isDefault, String? name, String? organizationId, String? phone, String? region, String? street, String? street2, enums.AddressType? type, String? zip}) async {
    final String apiPath = '/v1/customers/addresses/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (city != null) 'city': city,

            'company': company,

            'contact_id': contactId,

            if (country != null) 'country': country,

            if (isDefault != null) 'is_default': isDefault,

            'name': name,

            'organization_id': organizationId,

            'phone': phone,

            'region': region,

            if (street != null) 'street': street,

            'street2': street2,

            if (type != null) 'type': type.value,

            if (zip != null) 'zip': zip,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Address.fromMap(res.data);

  }

  Future<models.AuthLoginResponse> customersAuthLogin({required String email, required String password}) async {
    const String apiPath = '/v1/customers/auth/login';

        final Map<String, dynamic> apiParams = {
            'email': email,

            'password': password,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AuthLoginResponse.fromMap(res.data);

  }

  Future customersAuthLogout({required String sessionId, required String userId}) async {
    const String apiPath = '/v1/customers/auth/logout';

        final Map<String, dynamic> apiParams = {
            'session_id': sessionId,

            'user_id': userId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AuthMeResponse> customersAuthMe({required String userId, String? sessionId}) async {
    const String apiPath = '/v1/customers/auth/me';

        final Map<String, dynamic> apiParams = {
            'session_id': sessionId,

            'user_id': userId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AuthMeResponse.fromMap(res.data);

  }

  Future customersAuthRecovery({required String email, required String url}) async {
    const String apiPath = '/v1/customers/auth/recovery';

        final Map<String, dynamic> apiParams = {
            'email': email,

            'url': url,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future customersAuthRecoveryConfirm({required String password, required String secret, required String userId}) async {
    const String apiPath = '/v1/customers/auth/recovery';

        final Map<String, dynamic> apiParams = {
            'password': password,

            'secret': secret,

            'user_id': userId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.AuthRegisterResponse> customersAuthRegister({required String email, required String password, String? firstName, String? lastName, String? locale, String? organizationId, String? organizationName}) async {
    const String apiPath = '/v1/customers/auth/register';

        final Map<String, dynamic> apiParams = {
            'email': email,

            'first_name': firstName,

            'last_name': lastName,

            'locale': locale,

            'organization_id': organizationId,

            'organization_name': organizationName,

            'password': password,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.AuthRegisterResponse.fromMap(res.data);

  }

  Future customersContactsList() async {
    const String apiPath = '/v1/customers/contacts';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Contact> customersContactsCreate({required String email, String? firstName, bool? isPrimary, String? lastName, String? locale, String? organizationId, String? phone, enums.ContactRole? role, enums.ContactStatus? status}) async {
    const String apiPath = '/v1/customers/contacts';

        final Map<String, dynamic> apiParams = {
            'email': email,

            'first_name': firstName,

            if (isPrimary != null) 'is_primary': isPrimary,

            'last_name': lastName,

            'locale': locale,

            'organization_id': organizationId,

            'phone': phone,

            if (role != null) 'role': role.value,

            if (status != null) 'status': status.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Contact.fromMap(res.data);

  }

  Future customersContactsDelete({required String id}) async {
    final String apiPath = '/v1/customers/contacts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Contact> customersContactsGet({required String id}) async {
    final String apiPath = '/v1/customers/contacts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Contact.fromMap(res.data);

  }

  Future<models.Contact> customersContactsUpdate({required String id, String? email, String? firstName, bool? isPrimary, String? lastName, String? locale, String? organizationId, String? phone, enums.ContactRole? role, enums.ContactStatus? status}) async {
    final String apiPath = '/v1/customers/contacts/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (email != null) 'email': email,

            'first_name': firstName,

            if (isPrimary != null) 'is_primary': isPrimary,

            'last_name': lastName,

            'locale': locale,

            'organization_id': organizationId,

            'phone': phone,

            if (role != null) 'role': role.value,

            if (status != null) 'status': status.value,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Contact.fromMap(res.data);

  }

  Future customersOrganizationsList() async {
    const String apiPath = '/v1/customers/organizations';

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Organization> customersOrganizationsCreate({required String name, Map? settings, enums.OrganizationStatus? status, String? vatId}) async {
    const String apiPath = '/v1/customers/organizations';

        final Map<String, dynamic> apiParams = {
            'name': name,

            'settings': settings,

            if (status != null) 'status': status.value,

            'vat_id': vatId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Organization.fromMap(res.data);

  }

  Future customersOrganizationsDelete({required String id}) async {
    final String apiPath = '/v1/customers/organizations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.delete, path: apiPath, params: apiParams, headers: apiHeaders);

        return  res.data;

  }

  Future<models.Organization> customersOrganizationsGet({required String id}) async {
    final String apiPath = '/v1/customers/organizations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
        };

        final Map<String, String> apiHeaders = {

        };

        final res = await client.call(HttpMethod.get, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Organization.fromMap(res.data);

  }

  Future<models.Organization> customersOrganizationsUpdate({required String id, String? name, Map? settings, enums.OrganizationStatus? status, String? vatId}) async {
    final String apiPath = '/v1/customers/organizations/{id}'.replaceAll('{id}', id);

        final Map<String, dynamic> apiParams = {
            if (name != null) 'name': name,

            'settings': settings,

            if (status != null) 'status': status.value,

            'vat_id': vatId,

        };

        final Map<String, String> apiHeaders = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: apiPath, params: apiParams, headers: apiHeaders);

        return models.Organization.fromMap(res.data);

  }
}