part of '../../models.dart';

/// A Revenexx step marker. The storefront cuts the flat array at each marker and renders the nodes that follow it as one wizard step, then removes the marker before FormKit renders anything. A definition with no marker is a single-step form.
class FormKitStepMarker implements Model {
  /// Stable id for the step, so a client can address it.
  final String? id;

  /// What the step is: 'fields' for a normal step, 'thankyou' for the confirmation panel shown after a successful submit.
  final String? kind;

  /// The step heading the visitor reads.
  final String? title;

  final Map<String, dynamic> data;

  FormKitStepMarker({
    this.id,
    this.kind,
    this.title,
    required this.data,
  });

  factory FormKitStepMarker.fromMap(Map<String, dynamic> map) {
    return FormKitStepMarker(
      id: map['id']?.toString(),
      kind: map['kind']?.toString(),
      title: map['title']?.toString(),
      data: map["data"] ?? map,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "kind": kind,
      "title": title,
      "data": data,
    };
  }

  T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
