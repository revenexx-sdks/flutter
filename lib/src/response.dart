import 'dart:convert';

/// Revenexx Response
class Response<T> {
  /// Initializes a [Response]
  Response({this.data});

  /// HTTP body returned from Revenexx
  T? data;

  @override
  String toString() {
    if (data is Map) {
      return json.encode(data);
    }
    return data.toString();
  }
}
