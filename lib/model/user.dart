class UserModel {
  final String name;
  final String email;

  UserModel({
    required this.name,
    required this.email,
    
  });

  factory UserModel.fromJson(Map<String, dynamic> response) {
    return UserModel(
        name: response['name'],
        email: response['email'],
        );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      
    };
  }
}

