part of '../../models.dart';

/// 
class SegmentRulePreviewResponse implements Model {
    /// The cap that applied (5000), or null when the rule was answered by a single count query and no cap was needed.
    final int? cap;

    /// True when the combined evaluation hit the id cap, which makes `count` a lower bound.
    final bool? capped;

    /// How many organizations the rule selects. Exact when 'capped' is false; a LOWER BOUND when it is true.
    final int? count;

    /// How the conditions were combined for this preview.
    final enums.SegmentRulePreviewResponseRuleMatch? rule_match;

    /// A handful of the organizations the rule selects — enough for an operator to recognise whether the rule means what they thought. Never the full set.
    final List<Map>? sample;

    /// The segment named in the path. It is not read — the rule comes from the body — but it has to exist.
    final String? segment_id;

    /// What the rule selects. Only 'organizations' exists.
    final enums.SegmentRulePreviewResponseTarget? target;

    SegmentRulePreviewResponse({
        this.cap,
        this.capped,
        this.count,
        this.rule_match,
        this.sample,
        this.segment_id,
        this.target,
    });

    factory SegmentRulePreviewResponse.fromMap(Map<String, dynamic> map) {
        return SegmentRulePreviewResponse(
            cap: map['cap'],
            capped: map['capped'],
            count: map['count'],
            rule_match: map['rule_match'] != null ? enums.SegmentRulePreviewResponseRuleMatch.values.firstWhere((e) => e.value == map['rule_match']) : null,
            sample: List.from(map['sample'] ?? []),
            segment_id: map['segment_id']?.toString(),
            target: map['target'] != null ? enums.SegmentRulePreviewResponseTarget.values.firstWhere((e) => e.value == map['target']) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "cap": cap,
            "capped": capped,
            "count": count,
            "rule_match": rule_match?.value,
            "sample": sample,
            "segment_id": segment_id,
            "target": target?.value,
        };
    }
}
