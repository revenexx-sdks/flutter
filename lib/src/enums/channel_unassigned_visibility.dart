part of '../../enums.dart';

enum ChannelUnassignedVisibility {
    inherit(value: 'inherit'),
    all(value: 'all'),
    assignedOnly(value: 'assigned_only');

    const ChannelUnassignedVisibility({
        required this.value
    });

    final String value;

    String toJson() => value;
}