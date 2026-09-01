part of '../../models.dart';

///
class AuthLoginRequest implements Model {
  /// The buyer's login address — the same one the contact carries.
  final String email;

  /// The password from registration or recovery. Wrong credentials are a 401; a correct one on an undecided application is a 403.
  final String password;

  AuthLoginRequest({
    required this.email,
    required this.password,
  });

  factory AuthLoginRequest.fromMap(Map<String, dynamic> map) {
    return AuthLoginRequest(
      email: map['email'].toString(),
      password: map['password'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "email": email,
      "password": password,
    };
  }
}
