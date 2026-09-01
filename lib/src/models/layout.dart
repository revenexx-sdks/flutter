part of '../../models.dart';

///
class Layout implements Model {
  ///
  final String color_accent;

  ///
  final String color_bg;

  ///
  final String color_text;

  ///
  final String created_at;

  ///
  final bool enabled;

  ///
  final String font_family;

  ///
  final String footer_note;

  ///
  final String id;

  ///
  final bool is_default;

  ///
  final String legal_name;

  ///
  final String lifecycle_state;

  ///
  final String logo_url;

  ///
  final List markets;

  ///
  final List menu_links;

  ///
  final String name;

  ///
  final String postal_address;

  ///
  final String sender_name;

  ///
  final List social_links;

  ///
  final String support_email;

  ///
  final String tenant_id;

  ///
  final String updated_at;

  ///
  final String valid_from;

  ///
  final String valid_until;

  ///
  final String width;

  Layout({
    required this.color_accent,
    required this.color_bg,
    required this.color_text,
    required this.created_at,
    required this.enabled,
    required this.font_family,
    required this.footer_note,
    required this.id,
    required this.is_default,
    required this.legal_name,
    required this.lifecycle_state,
    required this.logo_url,
    required this.markets,
    required this.menu_links,
    required this.name,
    required this.postal_address,
    required this.sender_name,
    required this.social_links,
    required this.support_email,
    required this.tenant_id,
    required this.updated_at,
    required this.valid_from,
    required this.valid_until,
    required this.width,
  });

  factory Layout.fromMap(Map<String, dynamic> map) {
    return Layout(
      color_accent: map['color_accent'].toString(),
      color_bg: map['color_bg'].toString(),
      color_text: map['color_text'].toString(),
      created_at: map['created_at'].toString(),
      enabled: map['enabled'],
      font_family: map['font_family'].toString(),
      footer_note: map['footer_note'].toString(),
      id: map['id'].toString(),
      is_default: map['is_default'],
      legal_name: map['legal_name'].toString(),
      lifecycle_state: map['lifecycle_state'].toString(),
      logo_url: map['logo_url'].toString(),
      markets: List.from(map['markets'] ?? []),
      menu_links: List.from(map['menu_links'] ?? []),
      name: map['name'].toString(),
      postal_address: map['postal_address'].toString(),
      sender_name: map['sender_name'].toString(),
      social_links: List.from(map['social_links'] ?? []),
      support_email: map['support_email'].toString(),
      tenant_id: map['tenant_id'].toString(),
      updated_at: map['updated_at'].toString(),
      valid_from: map['valid_from'].toString(),
      valid_until: map['valid_until'].toString(),
      width: map['width'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "color_accent": color_accent,
      "color_bg": color_bg,
      "color_text": color_text,
      "created_at": created_at,
      "enabled": enabled,
      "font_family": font_family,
      "footer_note": footer_note,
      "id": id,
      "is_default": is_default,
      "legal_name": legal_name,
      "lifecycle_state": lifecycle_state,
      "logo_url": logo_url,
      "markets": markets,
      "menu_links": menu_links,
      "name": name,
      "postal_address": postal_address,
      "sender_name": sender_name,
      "social_links": social_links,
      "support_email": support_email,
      "tenant_id": tenant_id,
      "updated_at": updated_at,
      "valid_from": valid_from,
      "valid_until": valid_until,
      "width": width,
    };
  }
}
