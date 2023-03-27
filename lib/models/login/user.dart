class User {
  int? customerId;
  String? firstName;
  String? lastName;
  String? contact;
  String? email;
  String? image;
  String? token;

  User({
    this.customerId,
    this.firstName,
    this.lastName,
    this.contact,
    this.email,
    this.image,
    this.token,
  });

  User.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    contact = json['contact'];
    email = json['email'];
    image = json['image'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['customer_id'] = customerId;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['contact'] = contact;
    data['email'] = email;
    data['image'] = image;
    data['token'] = token;
    return data;
  }
}
