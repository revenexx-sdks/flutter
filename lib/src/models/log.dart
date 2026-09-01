part of '../../models.dart';

/// Log
class Log implements Model {
    /// Client code name. A short code such as `CH` for Chrome, derived from the request's User-Agent by the core service; the full code list is not part of this API.
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

    /// Device brand name.
    final String deviceBrand;

    /// Device model name.
    final String deviceModel;

    /// Device name.
    final String deviceName;

    /// Event name.
    final String event;

    /// IP session in use when the session was created.
    final String ip;

    /// API mode when event triggered.
    final String mode;

    /// Operating system code name. A short code such as `AND` for Android, derived from the request's User-Agent by the core service; the full code list is not part of this API.
    final String osCode;

    /// Operating system name.
    final String osName;

    /// Operating system version.
    final String osVersion;

    /// Log creation date in ISO 8601 format.
    final String time;

    /// User Email.
    final String userEmail;

    /// User ID.
    final String userId;

    /// User Name.
    final String userName;

    Log({
        required this.clientCode,
        required this.clientEngine,
        required this.clientEngineVersion,
        required this.clientName,
        required this.clientType,
        required this.clientVersion,
        required this.countryCode,
        required this.countryName,
        required this.deviceBrand,
        required this.deviceModel,
        required this.deviceName,
        required this.event,
        required this.ip,
        required this.mode,
        required this.osCode,
        required this.osName,
        required this.osVersion,
        required this.time,
        required this.userEmail,
        required this.userId,
        required this.userName,
    });

    factory Log.fromMap(Map<String, dynamic> map) {
        return Log(
            clientCode: map['clientCode'].toString(),
            clientEngine: map['clientEngine'].toString(),
            clientEngineVersion: map['clientEngineVersion'].toString(),
            clientName: map['clientName'].toString(),
            clientType: map['clientType'].toString(),
            clientVersion: map['clientVersion'].toString(),
            countryCode: map['countryCode'].toString(),
            countryName: map['countryName'].toString(),
            deviceBrand: map['deviceBrand'].toString(),
            deviceModel: map['deviceModel'].toString(),
            deviceName: map['deviceName'].toString(),
            event: map['event'].toString(),
            ip: map['ip'].toString(),
            mode: map['mode'].toString(),
            osCode: map['osCode'].toString(),
            osName: map['osName'].toString(),
            osVersion: map['osVersion'].toString(),
            time: map['time'].toString(),
            userEmail: map['userEmail'].toString(),
            userId: map['userId'].toString(),
            userName: map['userName'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "clientCode": clientCode,
            "clientEngine": clientEngine,
            "clientEngineVersion": clientEngineVersion,
            "clientName": clientName,
            "clientType": clientType,
            "clientVersion": clientVersion,
            "countryCode": countryCode,
            "countryName": countryName,
            "deviceBrand": deviceBrand,
            "deviceModel": deviceModel,
            "deviceName": deviceName,
            "event": event,
            "ip": ip,
            "mode": mode,
            "osCode": osCode,
            "osName": osName,
            "osVersion": osVersion,
            "time": time,
            "userEmail": userEmail,
            "userId": userId,
            "userName": userName,
        };
    }
}
