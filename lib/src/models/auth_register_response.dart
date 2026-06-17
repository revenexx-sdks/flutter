part of '../../models.dart';

/// 
class AuthRegisterResponse implements Model {
    /// 
    final Contact? contact;

    /// 
    final String? user_id;

    AuthRegisterResponse({
        this.contact,
        this.user_id,
    });

    factory AuthRegisterResponse.fromMap(Map<String, dynamic> map) {
        return AuthRegisterResponse(
            contact: Contact.fromMap(map['contact']),
            user_id: map['user_id']?.toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "contact": contact.toMap(),
            "user_id": user_id,
        };
    }
}
