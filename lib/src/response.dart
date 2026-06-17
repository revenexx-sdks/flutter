import 'dart:convert';

/// RevenexxAPIRevenexx Response
class Response<T> {
  /// Initializes a [Response]
  Response({this.data});

  /// HTTP body returned from RevenexxAPIRevenexx
  T? data;

  @override
  String toString() {
    if (data is Map) {
      return json.encode(data);
    }
    return data.toString();
  }
}
