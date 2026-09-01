part of '../../enums.dart';

enum ChannelVisibilityReason {
    assigned(value: 'assigned'),
    notAssignedToChannel(value: 'not_assigned_to_channel'),
    unassignedOpen(value: 'unassigned_open'),
    unassignedClosed(value: 'unassigned_closed'),
    noChannelContext(value: 'no_channel_context');

    const ChannelVisibilityReason({
        required this.value
    });

    final String value;

    String toJson() => value;
}