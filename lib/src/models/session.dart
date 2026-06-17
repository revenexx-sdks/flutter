part of '../../models.dart';

/// Session
class Session implements Model {
    /// Session creation date in ISO 8601 format.
    final String $createdAt;

    /// Session ID.
    final String $id;

    /// Session update date in ISO 8601 format.
    final String $updatedAt;

    /// Client code name. View list of [available options](https://github.com/appwrite/appwrite/blob/master/docs/lists/clients.json).
    final String clientCode;

    /// Client engine name.
    final String clientEngine;

    /// Client engine name.
    final String clientEngineVersion;

    /// Client name.
    final String clientName;

    /// Client type.
    final String clientType;

    /// Client version.
    final String clientVersion;

    /// Country two-character ISO 3166-1 alpha code.
    final String countryCode;

    /// Country name.
    final String countryName;

    /// Returns true if this the current user session.
    final bool current;

    /// Device brand name.
    final String deviceBrand;

    /// Device model name.
    final String deviceModel;

    /// Device name.
    final String deviceName;

    /// Session expiration date in ISO 8601 format.
    final String expire;

    /// Returns a list of active session factors.
    final List<String> factors;

    /// IP in use when the session was created.
    final String ip;

    /// Most recent date in ISO 8601 format when the session successfully passed MFA challenge.
    final String mfaUpdatedAt;

    /// Operating system code name. View list of [available options](https://github.com/appwrite/appwrite/blob/master/docs/lists/os.json).
    final String osCode;

    /// Operating system name.
    final String osName;

    /// Operating system version.
    final String osVersion;

    /// Session Provider.
    final String provider;

    /// Session Provider Access Token.
    final String providerAccessToken;

    /// The date of when the access token expires in ISO 8601 format.
    final String providerAccessTokenExpiry;

    /// Session Provider Refresh Token.
    final String providerRefreshToken;

    /// Session Provider User ID.
    final String providerUid;

    /// Secret used to authenticate the user. Only included if the request was made with an API key
    final String secret;

    /// User ID.
    final String userId;

    Session({
        required this.$createdAt,
        required this.$id,
        required this.$updatedAt,
        required this.clientCode,
        required this.clientEngine,
        required this.clientEngineVersion,
        required this.clientName,
        required this.clientType,
        required this.clientVersion,
        required this.countryCode,
        required this.countryName,
        required this.current,
        required this.deviceBrand,
        required this.deviceModel,
        required this.deviceName,
        required this.expire,
        required this.factors,
        required this.ip,
        required this.mfaUpdatedAt,
        required this.osCode,
        required this.osName,
        required this.osVersion,
        required this.provider,
        required this.providerAccessToken,
        required this.providerAccessTokenExpiry,
        required this.providerRefreshToken,
        required this.providerUid,
        required this.secret,
        required this.userId,
    });

    factory Session.fromMap(Map<String, dynamic> map) {
        return Session(
            $createdAt: map['\$createdAt'].toString(),
            $id: map['\$id'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            clientCode: map['clientCode'].toString(),
            clientEngine: map['clientEngine'].toString(),
            clientEngineVersion: map['clientEngineVersion'].toString(),
            clientName: map['clientName'].toString(),
            clientType: map['clientType'].toString(),
            clientVersion: map['clientVersion'].toString(),
            countryCode: map['countryCode'].toString(),
            countryName: map['countryName'].toString(),
            current: map['current'],
            deviceBrand: map['deviceBrand'].toString(),
            deviceModel: map['deviceModel'].toString(),
            deviceName: map['deviceName'].toString(),
            expire: map['expire'].toString(),
            factors: List.from(map['factors'] ?? []),
            ip: map['ip'].toString(),
            mfaUpdatedAt: map['mfaUpdatedAt'].toString(),
            osCode: map['osCode'].toString(),
            osName: map['osName'].toString(),
            osVersion: map['osVersion'].toString(),
            provider: map['provider'].toString(),
            providerAccessToken: map['providerAccessToken'].toString(),
            providerAccessTokenExpiry: map['providerAccessTokenExpiry'].toString(),
            providerRefreshToken: map['providerRefreshToken'].toString(),
            providerUid: map['providerUid'].toString(),
            secret: map['secret'].toString(),
            userId: map['userId'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$createdAt": $createdAt,
            "\$id": $id,
            "\$updatedAt": $updatedAt,
            "clientCode": clientCode,
            "clientEngine": clientEngine,
            "clientEngineVersion": clientEngineVersion,
            "clientName": clientName,
            "clientType": clientType,
            "clientVersion": clientVersion,
            "countryCode": countryCode,
            "countryName": countryName,
            "current": current,
            "deviceBrand": deviceBrand,
            "deviceModel": deviceModel,
            "deviceName": deviceName,
            "expire": expire,
            "factors": factors,
            "ip": ip,
            "mfaUpdatedAt": mfaUpdatedAt,
            "osCode": osCode,
            "osName": osName,
            "osVersion": osVersion,
            "provider": provider,
            "providerAccessToken": providerAccessToken,
            "providerAccessTokenExpiry": providerAccessTokenExpiry,
            "providerRefreshToken": providerRefreshToken,
            "providerUid": providerUid,
            "secret": secret,
            "userId": userId,
        };
    }
}
