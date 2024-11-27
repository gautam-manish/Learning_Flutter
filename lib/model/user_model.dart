class UserModel {
  String? name;
  String? email;
  String? password;
  int? age;
  String? address;
  bool? status;

  UserModel({
    this.name,
    this.email,
    this.password,
    this.age,
    this.address,
    this.status,
  });

  factory UserModel.fromJson(Map<String,dynamic> data){
    return UserModel(
      name: data['name'],
      email: data['email'],
      password: data['password'],
      age: data['age'],
      address: data['address'],
      status: data['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'age': age,
      'address': address,
      'status': status,
    };
  }
}