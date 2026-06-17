part of '../../models.dart';

/// 
class AuthMeResponse implements Model {
    /// 
    final Contact? contact;

    /// 
    final Map? user;

    AuthMeResponse({
        this.contact,
        this.user,
    });

    factory AuthMeResponse.fromMap(Map<String, dynamic> map) {
        return AuthMeResponse(
            contact: Contact.fromMap(map['contact']),
            user: map['user'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "contact": contact.toMap(),
            "user": user,
        };
    }
}
