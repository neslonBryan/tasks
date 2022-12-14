class UserModel {
  String? id;
  String fullName;
  String email;
  String passwod;

  UserModel({
    this.id,
    required this.fullName,
    required this.email,
    required this.passwod,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "email": email,
      };
}
