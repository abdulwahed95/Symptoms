class Symptoms {
  int? id;
  String? name;
  String? username;
  String? image;
  String? email;
  String? phone;
  String? website;

  Symptoms({
    this.id,
    this.name,
    this.image,
    this.username,
    this.email,
    this.phone,
    this.website,
  });

  Symptoms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    image = json['image'];
    email = json['email'];

    phone = json['phone'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['image'] = image;
    data['email'] = email;

    data['phone'] = phone;
    data['website'] = website;

    return data;
  }
}
