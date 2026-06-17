part of '../../models.dart';

/// 
class AuthLoginResponse implements Model {
    /// 
    final Contact? contact;

    /// 
    final AuthSession? session;

    AuthLoginResponse({
        this.contact,
        this.session,
    });

    factory AuthLoginResponse.fromMap(Map<String, dynamic> map) {
        return AuthLoginResponse(
            contact: Contact.fromMap(map['contact']),
            session: AuthSession.fromMap(map['session']),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "contact": contact.toMap(),
            "session": session.toMap(),
        };
    }
}
