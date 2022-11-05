// To parse this JSON data, do
//
//     final bannerInfo = bannerInfoFromJson(jsonString);

import 'dart:convert';

BannerInfo bannerInfoFromJson(String str) =>
    BannerInfo.fromJson(json.decode(str));

String bannerInfoToJson(BannerInfo data) => json.encode(data.toJson());

class BannerInfo {
  BannerInfo({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.link,
  });

  int id;
  String title;
  String subtitle;
  String image;
  String link;

  factory BannerInfo.fromJson(Map<String, dynamic> json) => BannerInfo(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        image: json["image"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "image": image,
        "link": link,
      };
}
