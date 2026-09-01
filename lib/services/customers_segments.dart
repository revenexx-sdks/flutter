part of '../revenexx.dart';

/// Named groups of ORGANIZATIONS — never of people — built by hand, by
/// rule, or both at once, plus the memberships that record which of the two a
/// company came in by. The rule language is the one product categories use,
/// evaluated over organization columns and settings AND over order behaviour
/// (revenue, order count, average order value, days since the last order) read
/// from this app&#039;s own metrics projection, because the orders app may not be
/// joined. Rules are materialized rather than live: preview one before storing
/// it, then recompute one segment or every segment that carries rules.
class CustomersSegments extends Service {
  /// Initializes a [CustomersSegments] service
  CustomersSegments(super.client);

  /// One organization inside one segment, plus the record of how it got there:
  /// `source: "manual"` for a company somebody put in, `source: "rule"` for one
  /// the rule engine matched. That distinction is what lets a recompute rewrite
  /// its own rows and leave every hand-picked one alone. The membership rows
  /// themselves — the answer to "which companies are in this segment"
  /// (`segment_id`) and to "which segments is this company in"
  /// (`organization_id`). Paged with `limit`/`offset`/`order`.
  Future customersSegmentMembersList(
      {String? id,
      String? segmentId,
      String? organizationId,
      enums.Source? source,
      String? createdAt,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/customers/segment_members';

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (segmentId != null) 'segment_id': segmentId,
      if (organizationId != null) 'organization_id': organizationId,
      if (source != null) 'source': source.value,
      if (createdAt != null) 'created_at': createdAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// One organization inside one segment, plus the record of how it got there:
  /// `source: "manual"` for a company somebody put in, `source: "rule"` for one
  /// the rule engine matched. That distinction is what lets a recompute rewrite
  /// its own rows and leave every hand-picked one alone. Adds a company to a
  /// segment BY HAND. The row is `source: "manual"`, which is what protects it:
  /// a rule recompute rewrites the rule-derived rows of that segment and never
  /// touches this one. A create cannot omit `segment_id` and `organization_id`;
  /// everything else is optional or defaulted by the database. Two rows of this
  /// tenant may not share the combination of `segment_id` + `organization_id`.
  Future<models.Error> customersSegmentMembersCreate(
      {required String organizationId,
      required String segmentId,
      enums.SegmentMemberSource? source}) async {
    const String apiPath = '/v1/customers/segment_members';

    final Map<String, dynamic> apiParams = {
      'organization_id': organizationId,
      'segment_id': segmentId,
      if (source != null) 'source': source.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One organization inside one segment, plus the record of how it got there:
  /// `source: "manual"` for a company somebody put in, `source: "rule"` for one
  /// the rule engine matched. That distinction is what lets a recompute rewrite
  /// its own rows and leave every hand-picked one alone. Takes the company out
  /// of the segment. If the segment carries rules and the company still matches
  /// them, the next recompute puts it back; remove it from the rule, not from
  /// the list. Nothing else in this app points at it, so nothing else goes with
  /// it.
  Future<models.Error> customersSegmentMembersDelete(
      {required String id}) async {
    final String apiPath =
        '/v1/customers/segment_members/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One organization inside one segment, plus the record of how it got there:
  /// `source: "manual"` for a company somebody put in, `source: "rule"` for one
  /// the rule engine matched. That distinction is what lets a recompute rewrite
  /// its own rows and leave every hand-picked one alone. One membership row by
  /// id, with the `source` that says how it came about.
  Future<models.Error> customersSegmentMembersGet({required String id}) async {
    final String apiPath =
        '/v1/customers/segment_members/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// One organization inside one segment, plus the record of how it got there:
  /// `source: "manual"` for a company somebody put in, `source: "rule"` for one
  /// the rule engine matched. That distinction is what lets a recompute rewrite
  /// its own rows and leave every hand-picked one alone. A partial update. In
  /// practice there is little to change — a membership is a pair of ids — so
  /// this exists for the `source` correction rather than as the normal path. Two
  /// rows of this tenant may not share the combination of `segment_id` +
  /// `organization_id`.
  Future<models.Error> customersSegmentMembersUpdate(
      {required String id,
      String? organizationId,
      String? segmentId,
      enums.SegmentMemberSource? source}) async {
    final String apiPath =
        '/v1/customers/segment_members/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (organizationId != null) 'organization_id': organizationId,
      if (segmentId != null) 'segment_id': segmentId,
      if (source != null) 'source': source.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A segment is a named group of ORGANIZATIONS — never of people — built
  /// by hand, by rule, or both at once. It is what a price list, a campaign or a
  /// shipping option is pointed at when the answer is "these customers, not
  /// those". Every segment this tenant keeps, with its stored rules. Any column
  /// filters and the page is `limit`/`offset`/`order`. Which companies are
  /// actually IN one is `segment_members`, because the rule half is materialized
  /// rather than evaluated on read.
  Future customersSegmentsList(
      {String? id,
      String? code,
      int? position,
      enums.RuleMatch? ruleMatch,
      String? rulesComputedAt,
      String? createdAt,
      String? updatedAt,
      int? limit,
      int? offset,
      String? order}) async {
    const String apiPath = '/v1/customers/segments';

    final Map<String, dynamic> apiParams = {
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (position != null) 'position': position,
      if (ruleMatch != null) 'rule_match': ruleMatch.value,
      if (rulesComputedAt != null) 'rules_computed_at': rulesComputedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (order != null) 'order': order,
    };

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return res.data;
  }

  /// A segment is a named group of ORGANIZATIONS — never of people — built
  /// by hand, by rule, or both at once. It is what a price list, a campaign or a
  /// shipping option is pointed at when the answer is "these customers, not
  /// those". Creates the group. Rules are optional: leave them out for a
  /// hand-picked list, or store a rule document and let the recompute keep the
  /// membership up to date. The `code` is what other apps point at, so pick it
  /// deliberately. `code` is the only field a create cannot omit; everything
  /// else is optional or defaulted by the database. Two rows of this tenant may
  /// not share `code`.
  Future<models.Error> customersSegmentsCreate(
      {required String code,
      Map? labels,
      int? position,
      enums.SegmentRuleMatch? ruleMatch,
      Map? rules}) async {
    const String apiPath = '/v1/customers/segments';

    final Map<String, dynamic> apiParams = {
      'code': code,
      'labels': labels,
      if (position != null) 'position': position,
      'rule_match': ruleMatch?.value,
      if (rules != null) 'rules': rules,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Same sync as the single-segment recompute, applied to every segment with
  /// non-null rules. A failing segment is reported in its result entry instead
  /// of aborting the run. The run shares one budget: a segment that does not fit
  /// reports done:false (or skipped:true) and keeps rules_computed_at null, so
  /// the next call resumes it from its own data. Repeat until the top-level done
  /// is true.
  Future<models.Error> customersSegmentsRulesRecomputeAll(
      {required Map data}) async {
    const String apiPath = '/v1/customers/segments/rules/recompute-all';

    final Map<String, dynamic> apiParams = {
      'data': data,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A segment is a named group of ORGANIZATIONS — never of people — built
  /// by hand, by rule, or both at once. It is what a price list, a campaign or a
  /// shipping option is pointed at when the answer is "these customers, not
  /// those". Removes the segment. Anything in another app that points at its
  /// `code` — a price list, a campaign — is left pointing at nothing,
  /// because no app may hold a foreign key into another (ADR-0055). Deleting one
  /// takes every `segment_members` row that points at it with it — the foreign
  /// keys decide, not this route.
  Future<models.Error> customersSegmentsDelete({required String id}) async {
    final String apiPath = '/v1/customers/segments/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.delete,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A segment is a named group of ORGANIZATIONS — never of people — built
  /// by hand, by rule, or both at once. It is what a price list, a campaign or a
  /// shipping option is pointed at when the answer is "these customers, not
  /// those". One segment by id, including the rule document it carries. A
  /// segment with no rules is hand-picked and completely valid.
  Future<models.Error> customersSegmentsGet({required String id}) async {
    final String apiPath = '/v1/customers/segments/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {};

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A segment is a named group of ORGANIZATIONS — never of people — built
  /// by hand, by rule, or both at once. It is what a price list, a campaign or a
  /// shipping option is pointed at when the answer is "these customers, not
  /// those". A partial update — send only what changes. Editing the rules does
  /// NOT re-evaluate them: that is `POST
  /// /customers/segments/{segment_id}/rules/recompute`, so a half-typed rule
  /// never silently empties a live segment. Two rows of this tenant may not
  /// share `code`.
  Future<models.Error> customersSegmentsUpdate(
      {required String id,
      String? code,
      Map? labels,
      int? position,
      enums.SegmentRuleMatch? ruleMatch,
      Map? rules}) async {
    final String apiPath = '/v1/customers/segments/{id}'.replaceAll('{id}', id);

    final Map<String, dynamic> apiParams = {
      if (code != null) 'code': code,
      'labels': labels,
      if (position != null) 'position': position,
      'rule_match': ruleMatch?.value,
      if (rules != null) 'rules': rules,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.put,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// A dry run: it answers how many organizations the rule would select, with a
  /// handful of them by name, and writes nothing at all. Evaluates the rule
  /// document in the REQUEST BODY (not the stored segments.rules), so the
  /// cockpit can preview an unsaved rule. Costs a single count query for the
  /// common single-query rule; 'any' rules and rules repeating a column are
  /// combined in the app and capped at 5000 ids, in which case 'capped' is true
  /// and 'count' is a LOWER bound. Membership is never touched.
  Future<models.Error> customersSegmentsRulesPreview(
      {required String segmentId,
      required List<models.SegmentRuleCondition> conditions,
      enums.RuleMatch? ruleMatch,
      enums.Target? target}) async {
    final String apiPath = '/v1/customers/segments/{segment_id}/rules/preview'
        .replaceAll('{segment_id}', segmentId);

    final Map<String, dynamic> apiParams = {
      'conditions': conditions.map((p) => p.toMap()).toList(),
      'rule_match': ruleMatch?.value,
      'target': target?.value,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }

  /// Evaluates segments.rules (NOT the request body), then inserts the newly
  /// matching organizations as source='rule' rows and deletes the rule rows that
  /// no longer match. Manual (source='manual') memberships are never inserted,
  /// deleted or shadowed. Bounded by a wall-clock budget below the gateway's
  /// upstream timeout: when 'done' is false, POST again with the returned
  /// 'cursor' until it is true. added/removed/processed count THIS call only.
  /// Omitting 'cursor' resumes an unfinished pass and starts a fresh one after a
  /// completed pass; an explicit null always restarts.
  /// segments.rules_computed_at is stamped only when the pass completes.
  Future<models.Error> customersSegmentsRulesRecompute(
      {required String segmentId, String? cursor}) async {
    final String apiPath = '/v1/customers/segments/{segment_id}/rules/recompute'
        .replaceAll('{segment_id}', segmentId);

    final Map<String, dynamic> apiParams = {
      'cursor': cursor,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.post,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.Error.fromMap(res.data);
  }
}
