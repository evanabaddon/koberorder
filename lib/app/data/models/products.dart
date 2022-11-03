import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    required this.id,
    required this.sku,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.variations,
    required this.addOns,
    required this.tax,
    required this.availableTimeStarts,
    required this.availableTimeEnds,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.attributes,
    required this.categoryIds,
    required this.choiceOptions,
    required this.discount,
    required this.discountType,
    required this.taxType,
    required this.setMenu,
    required this.branchId,
    required this.colors,
    required this.popularityCount,
    required this.rating,
  });

  int id;
  String sku;
  String name;
  String description;
  String image;
  int price;
  List<dynamic> variations;
  List<dynamic> addOns;
  int tax;
  String availableTimeStarts;
  String availableTimeEnds;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  List<dynamic> attributes;
  List<CategoryId> categoryIds;
  List<dynamic> choiceOptions;
  int discount;
  String discountType;
  String taxType;
  int setMenu;
  int branchId;
  dynamic colors;
  int popularityCount;
  List<dynamic> rating;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        sku: json["sku"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        price: json["price"],
        variations: List<dynamic>.from(json["variations"].map((x) => x)),
        addOns: List<dynamic>.from(json["add_ons"].map((x) => x)),
        tax: json["tax"],
        availableTimeStarts: json["available_time_starts"],
        availableTimeEnds: json["available_time_ends"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        attributes: List<dynamic>.from(json["attributes"].map((x) => x)),
        categoryIds: List<CategoryId>.from(
            json["category_ids"].map((x) => CategoryId.fromJson(x))),
        choiceOptions: List<dynamic>.from(json["choice_options"].map((x) => x)),
        discount: json["discount"],
        discountType: json["discount_type"],
        taxType: json["tax_type"],
        setMenu: json["set_menu"],
        branchId: json["branch_id"],
        colors: json["colors"],
        popularityCount: json["popularity_count"],
        rating: List<dynamic>.from(json["rating"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sku": sku,
        "name": name,
        "description": description,
        "image": image,
        "price": price,
        "variations": List<dynamic>.from(variations.map((x) => x)),
        "add_ons": List<dynamic>.from(addOns.map((x) => x)),
        "tax": tax,
        "available_time_starts": availableTimeStarts,
        "available_time_ends": availableTimeEnds,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "attributes": List<dynamic>.from(attributes.map((x) => x)),
        "category_ids": List<dynamic>.from(categoryIds.map((x) => x.toJson())),
        "choice_options": List<dynamic>.from(choiceOptions.map((x) => x)),
        "discount": discount,
        "discount_type": discountType,
        "tax_type": taxType,
        "set_menu": setMenu,
        "branch_id": branchId,
        "colors": colors,
        "popularity_count": popularityCount,
        "rating": List<dynamic>.from(rating.map((x) => x)),
      };
}

class CategoryId {
  CategoryId({
    required this.id,
    required this.position,
  });

  String id;
  int position;

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
        id: json["id"],
        position: json["position"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "position": position,
      };
}
