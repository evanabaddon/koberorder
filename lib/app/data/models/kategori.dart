import 'dart:convert';

Kategori kategoriFromJson(String str) => Kategori.fromJson(json.decode(str));

String kategoriToJson(Kategori data) => json.encode(data.toJson());

class Kategori {
  Kategori({
    required this.id,
    required this.name,
    required this.icon,
    required this.image,
  });

  int id;
  String name;
  String? icon;
  String image;

  factory Kategori.fromJson(Map<String, dynamic> json) => Kategori(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "icon": icon,
        "image": image,
      };
}
