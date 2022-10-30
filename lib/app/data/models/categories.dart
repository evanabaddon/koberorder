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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['parent_id'] = this.parentId;
    data['position'] = this.position;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    data['banner_image'] = this.bannerImage;

    return data;
  }
}
