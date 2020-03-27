import 'dart:convert';
class User {
  final String email;
  final String password;
  final String firstName;
  final Billing billing;
  final Shipping shipping;

  User({this.email, this.password, this.firstName, this.billing, this.shipping});

  static User fromJson(dynamic json) {
    return User(
      email: json["email"],
      password: json["password"],
      firstName: json["first_name"],
      billing: Billing.fromJson(json["billing"]),
      shipping: Shipping.fromJson(json["shipping"]),
    );
  }

  Map<String, dynamic> toJson() => {'email': email, 'password': password, 'first_name': firstName, 'billing': billing.toJson(), 'shipping': shipping.toJson()};
}

class Billing {
  final String email;
  final String phone;

  Billing({this.email, this.phone});

  static Billing fromJson(dynamic json) {
    return Billing(email: json["email"], phone: json["phone"]);
  }

  Map<String, dynamic> toJson() => {'email': email, 'phone': phone};
}

class Shipping {
  final String name;

  Shipping({
    this.name,
  });

  static Shipping fromJson(dynamic json) {
    return Shipping(
      name: json["first_name"],
    );
  }


  Map<String, dynamic> toJson() => {'name': name};
}

void main(){
  var data = {
  "email": "qwe@qwe.com",
  "password": "123",
  "first_name": "qweqwe",
  "billing": {
    "email": "qwe@qwe.com",
    "phone": "321654978",
  },
  "shipping": {
    "first_name": "qweqwe",
  }
};
  var user = User.fromJson(data);

print("Users Email is ${user.billing.email}");
print("Shipping name is ${user.shipping.name}");

var jsonString = json.encode(user.toJson()); // upload this as body to your server.
print("Json String is " + jsonString);
}
