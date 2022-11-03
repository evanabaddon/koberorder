// To parse this JSON data, do
//
//     final produk = produkFromJson(jsonString);

import 'dart:convert';

Produk produkFromJson(String str) => Produk.fromJson(json.decode(str));

String produkToJson(Produk data) => json.encode(data.toJson());

class Produk {
  Produk({
    required this.id,
    required this.kodeMenu,
    required this.name,
    required this.idSatuan,
    required this.satuanName,
    required this.idKategori,
    required this.kategoriName,
    required this.kategoriIcon,
    required this.kategoriImage,
    required this.price,
    required this.content,
    required this.image,
    required this.featured,
  });

  int id;
  String kodeMenu;
  String name;
  int idSatuan;
  String satuanName;
  int idKategori;
  String kategoriName;
  String? kategoriIcon;
  String kategoriImage;
  int price;
  String content;
  String? image;
  String featured;

  factory Produk.fromJson(Map<String, dynamic> json) => Produk(
        id: json["id"],
        kodeMenu: json["kode_menu"],
        name: json["name"],
        idSatuan: json["id_satuan"],
        satuanName: json["satuan_name"],
        idKategori: json["id_kategori"],
        kategoriName: json["kategori_name"],
        kategoriIcon: json["kategori_icon"],
        kategoriImage: json["kategori_image"],
        price: json["price"],
        content: json["content"],
        image: json["image"],
        featured: json["featured"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kode_menu": kodeMenu,
        "name": name,
        "id_satuan": idSatuan,
        "satuan_name": satuanName,
        "id_kategori": idKategori,
        "kategori_name": kategoriName,
        "kategori_icon": kategoriIcon,
        "kategori_image": kategoriImage,
        "price": price,
        "content": content,
        "image": image,
        "featured": featured,
      };
}
