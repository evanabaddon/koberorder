class Categories {
  int? id;
  String? name;
  int? parentId;
  int? position;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? image;
  String? bannerImage;

  Categories(
      {this.id,
      this.name,
      this.parentId,
      this.position,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.bannerImage});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = json['parent_id'];
    position = json['position'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    bannerImage = json['banner_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['parent_id'] = parentId;
    data['position'] = position;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image'] = image;
    data['banner_image'] = bannerImage;

    return data;
  }
}
