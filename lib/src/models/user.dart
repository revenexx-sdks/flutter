part of '../../models.dart';

/// User
class User implements Model {
  /// User creation date in ISO 8601 format.
  final String $createdAt;

  /// User ID.
  final String $id;

  /// User update date in ISO 8601 format.
  final String $updatedAt;

  /// Most recent access date in ISO 8601 format. This attribute is only updated again after 24 hours.
  final String accessedAt;

  /// User email address.
  final String email;

  /// Email verification status.
  final bool emailVerification;

  /// Password hashing algorithm.
  final String? hash;

  /// Password hashing algorithm configuration.
  final Map? hashOptions;

  /// Labels for the user.
  final List<String> labels;

  /// Multi factor authentication status.
  final bool mfa;

  /// User name.
  final String name;

  /// Hashed user password.
  final String? password;

  /// Password update time in ISO 8601 format.
  final String passwordUpdate;

  /// User phone number in E.164 format.
  final String phone;

  /// Phone verification status.
  final bool phoneVerification;

  /// User preferences as a key-value object
  final Preferences prefs;

  /// User registration date in ISO 8601 format.
  final String registration;

  /// User status. Pass `true` for enabled and `false` for disabled.
  final bool status;

  /// A user-owned message receiver. A single user may have multiple e.g. emails, phones, and a browser. Each target is registered with a single provider.
  final List<Target> targets;

  User({
    required this.$createdAt,
    required this.$id,
    required this.$updatedAt,
    required this.accessedAt,
    required this.email,
    required this.emailVerification,
    this.hash,
    this.hashOptions,
    required this.labels,
    required this.mfa,
    required this.name,
    this.password,
    required this.passwordUpdate,
    required this.phone,
    required this.phoneVerification,
    required this.prefs,
    required this.registration,
    required this.status,
    required this.targets,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      $createdAt: map['\$createdAt'].toString(),
      $id: map['\$id'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      accessedAt: map['accessedAt'].toString(),
      email: map['email'].toString(),
      emailVerification: map['emailVerification'],
      hash: map['hash']?.toString(),
      hashOptions: map['hashOptions'],
      labels: List.from(map['labels'] ?? []),
      mfa: map['mfa'],
      name: map['name'].toString(),
      password: map['password']?.toString(),
      passwordUpdate: map['passwordUpdate'].toString(),
      phone: map['phone'].toString(),
      phoneVerification: map['phoneVerification'],
      prefs: Preferences.fromMap(map['prefs']),
      registration: map['registration'].toString(),
      status: map['status'],
      targets: List<Target>.from(map['targets'].map((p) => Target.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$createdAt": $createdAt,
      "\$id": $id,
      "\$updatedAt": $updatedAt,
      "accessedAt": accessedAt,
      "email": email,
      "emailVerification": emailVerification,
      "hash": hash,
      "hashOptions": hashOptions,
      "labels": labels,
      "mfa": mfa,
      "name": name,
      "password": password,
      "passwordUpdate": passwordUpdate,
      "phone": phone,
      "phoneVerification": phoneVerification,
      "prefs": prefs.toMap(),
      "registration": registration,
      "status": status,
      "targets": targets.map((p) => p.toMap()).toList(),
    };
  }
}
