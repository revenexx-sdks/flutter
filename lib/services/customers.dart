part of '../revenexx.dart';

/// Storefront access: the authentication passthrough a shop front-end calls,
/// and the principal resolver the API gateway calls. Register, log in, log
/// out, recover a password, resolve the current session back to its contact
/// — this app owns the customer DATA while the platform identity service
/// owns the sessions, so these routes forward to it and answer with both
/// halves. Session material travels in the body, which makes the expected
/// caller a trusted BFF rather than a browser. These are the only operations
/// here with no Cockpit screen; every group below is one.
class Customers extends Service {
  /// Initializes a [Customers] service
  Customers(super.client);

  /// An email and a password go in; a session and the CONTACT behind it come
  /// back, so a storefront knows in one call both that the buyer is signed in
  /// and who they are. The session is minted server-side rather than handed back
  /// from the credential check, because the account route hides the session
  /// secret from non-privileged responses and a trusted BFF needs it.
  /// `permissions` carries the buyer's effective grants, so a BFF does not need
  /// a second call to decide what to render.
  Future<models.Error> customersAuthLogin(
      {required String email, required String password}) async {
    const String apiPath = '/v1/customers/auth/login';

    final Map<String, dynamic> apiParams = {
      'email': email,
      'password': password,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Ends ONE session — the buyer signs out on this device and stays signed in
  /// on the others, because the session id is what is revoked and not the
  /// account. The contact row is untouched: signing out is not blocking, and a
  /// caller wanting the second thing wants `status: "blocked"` on the contact
  /// instead. Both ids come from what `/customers/auth/login` answered, and a
  /// BFF should drop its own cookie whatever this answers — the session is
  /// unusable afterwards either way.
  Future<models.Error> customersAuthLogout(
      {required String sessionId, required String userId}) async {
    const String apiPath = '/v1/customers/auth/logout';

    final Map<String, dynamic> apiParams = {
      'session_id': sessionId,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Sign in without a password: a link goes to the address, and `PUT
  /// /customers/auth/magic-link` turns it into a session. Creates the account
  /// when the address is new, which makes this a registration path as much as a
  /// sign-in one — and why an address nobody holds is not distinguished in the
  /// answer. The mail is this shop's own template through the messaging service;
  /// the secret is not in this response, only in the link.
  Future<models.Error> customersAuthMagicLink(
      {required String email, required String url}) async {
    const String apiPath = '/v1/customers/auth/magic-link';

    final Map<String, dynamic> apiParams = {
      'email': email,
      'url': url,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The buyer clicked the link and the storefront read `userId` and `secret`
  /// out of it. Answers exactly what a password login answers — session,
  /// contact and effective grants — because a shop must not have to branch on
  /// how somebody signed in.
  Future<models.Error> customersAuthMagicLinkConfirm(
      {required String secret, required String userId}) async {
    const String apiPath = '/v1/customers/auth/magic-link';

    final Map<String, dynamic> apiParams = {
      'secret': secret,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The platform user, the customer record mirrored against it and the
  /// effective grants, in one call. The expected caller is a trusted storefront
  /// BFF holding the session on the buyer's behalf, which is why the ids travel
  /// in the body rather than in a browser-facing header. The grants are derived
  /// here on every call rather than returned from anywhere they could be cached,
  /// so a role changed a second ago is already reflected.
  Future<models.Error> customersAuthMe(
      {required String userId, String? sessionId}) async {
    const String apiPath = '/v1/customers/auth/me';

    final Map<String, dynamic> apiParams = {
      'session_id': sessionId,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Between the password and the finished session: the buyer has proved one
  /// thing and is asked for another. Created by user id, because the account
  /// route that creates challenges hides the code from whoever may call it —
  /// and answered with the half-finished session the sign-in is in the middle
  /// of, through `PUT /customers/auth/mfa/challenge`. Needs a platform build
  /// that returns the challenge code; without one there is no way to read what
  /// to send, and the call answers 502 rather than mailing an empty challenge.
  Future<models.Error> customersAuthMfaChallenge(
      {required String userId, String? factor}) async {
    const String apiPath = '/v1/customers/auth/mfa/challenge';

    final Map<String, dynamic> apiParams = {
      'factor': factor,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The code the buyer typed, against the challenge it was sent for. The
  /// session becomes fully authenticated when this answers.
  Future<models.Error> customersAuthMfaChallengeConfirm(
      {required String challengeId,
      required String code,
      required String sessionSecret,
      String? userId}) async {
    const String apiPath = '/v1/customers/auth/mfa/challenge';

    final Map<String, dynamic> apiParams = {
      'challenge_id': challengeId,
      'code': code,
      'session_secret': sessionSecret,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The same token as the sign-in link, delivered as a short code instead —
  /// for a buyer on a phone, where leaving for a mail client and coming back
  /// loses the checkout they were in the middle of. Redeemed with `PUT
  /// /customers/auth/otp`.
  Future<models.Error> customersAuthOtp({required String email}) async {
    const String apiPath = '/v1/customers/auth/otp';

    final Map<String, dynamic> apiParams = {
      'email': email,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The code the buyer typed, plus the `userId` the send answered with. Answers
  /// exactly what a password login answers — session, contact and effective
  /// grants — so a storefront never has to branch on how somebody signed in.
  /// The code is spent on first use and expires, so a second attempt with the
  /// same one is a 401 rather than a second session.
  Future<models.Error> customersAuthOtpConfirm(
      {required String secret, required String userId}) async {
    const String apiPath = '/v1/customers/auth/otp';

    final Map<String, dynamic> apiParams = {
      'secret': secret,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Step one of two: a link goes to the address given, and `PUT
  /// /customers/auth/recovery` is what the buyer's browser comes back to. The
  /// identity service mints the token; the MAIL is this shop's own — the
  /// tenant's template, layout, language and sending domain, through the
  /// messaging service. The secret is NOT in this answer: it exists only inside
  /// the mailed link, which is the whole point of the two-step shape, and
  /// echoing it here would make the mail decorative. Nothing about the contact
  /// changes; the password only moves in step two.
  Future<models.Error> customersAuthRecovery(
      {required String email, required String url}) async {
    const String apiPath = '/v1/customers/auth/recovery';

    final Map<String, dynamic> apiParams = {
      'email': email,
      'url': url,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Step two: the `userId` and `secret` the mailed link carried, plus the
  /// password the buyer just typed. The secret is spent on first use and
  /// expires, so a link cannot be replayed and a second attempt with the same
  /// one is a 401 rather than a second password change. The new password is in
  /// effect the moment this answers; what happens to sessions opened with the
  /// old one is the identity service's policy, not this app's.
  Future<models.Error> customersAuthRecoveryConfirm(
      {required String password,
      required String secret,
      required String userId}) async {
    const String apiPath = '/v1/customers/auth/recovery';

    final Map<String, dynamic> apiParams = {
      'password': password,
      'secret': secret,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One call writes the whole buyer: the contact this app is the system of
  /// record for, and the platform user behind its login. When the body names a
  /// company it also FOUNDS one — an organization, mirrored into platform auth
  /// as a team, with this contact as its admin. The tenant setting
  /// registration_mode decides what a registration IS. 'open' (the default,
  /// unchanged behaviour) creates a finished account:
  /// registration_status='approved', status='active', login works.
  /// 'approval_required' creates an APPLICATION: registration_status='pending',
  /// status='invited', the platform user exists with the applicant's own
  /// password but is DISABLED, and a newly founded organization is parked as
  /// 'blocked' — check `approval_required` in the response and show a 'we will
  /// get back to you' screen instead of logging the buyer in. The registration
  /// gates below are all evaluated BEFORE anything is written, and a failure
  /// after that point rolls the organization and the contact back together.
  Future<models.Error> customersAuthRegister(
      {required String email,
      required String password,
      String? firstName,
      String? lastName,
      String? locale,
      String? organizationId,
      String? organizationName,
      String? url,
      String? vatId,
      String? verificationUrl}) async {
    const String apiPath = '/v1/customers/auth/register';

    final Map<String, dynamic> apiParams = {
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'locale': locale,
      'organization_id': organizationId,
      'organization_name': organizationName,
      'password': password,
      'url': url,
      'vat_id': vatId,
      'verification_url': verificationUrl,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Confirm that the address belongs to the buyer. Needs no session: the
  /// verification is created through the identity service's users surface,
  /// because its account counterpart reads the authenticated user and a caller
  /// authenticating AS the user cannot see the secret it just created. The buyer
  /// still confirms with their own session, through `PUT
  /// /customers/auth/verification` — only the creation moved. Send it right
  /// after a registration, or from an account page.
  Future<models.Error> customersAuthVerification(
      {required String url, required String userId}) async {
    const String apiPath = '/v1/customers/auth/verification';

    final Map<String, dynamic> apiParams = {
      'url': url,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The `userId` and `secret` the mailed link carried. The address counts as
  /// confirmed the moment this answers; the secret is spent, so the link cannot
  /// be replayed.
  Future<models.Error> customersAuthVerificationConfirm(
      {required String secret, required String userId}) async {
    const String apiPath = '/v1/customers/auth/verification';

    final Map<String, dynamic> apiParams = {
      'secret': secret,
      'user_id': userId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// The capability the API gateway calls to turn a caller's
  /// X-Revenexx-Principal assertion into the permission set it forwards to every
  /// other app as X-Revenexx-Permissions. This app is the platform's role
  /// provider (manifest#provides_roles), and this is the hot path of every
  /// attributed storefront request — one contact read plus the tenant's role
  /// map. A blocked or pending contact always resolves with active=false; what
  /// its `permissions` then say is the tenant's blocked_contact_behavior setting
  /// — 'keep' (the default, the role's grants), 'catalog_only' or 'deny_all'.
  Future<models.Error> customersPrincipalResolve(
      {required String contactId}) async {
    const String apiPath = '/v1/customers/principal/resolve';

    final Map<String, dynamic> apiParams = {
      'contact_id': contactId,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}
