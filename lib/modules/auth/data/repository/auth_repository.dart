import '../models/user_model.dart';

class AuthRepository {
  // Simulate a login API call
  Future<User> login(String email, String password) async {
    //ToDo: Call login api and return user or error
    if (email == "test@test.com" && password == "password") {
      return User();
    } else {
      throw Exception("Invalid email or password");
    }
  }

  // Simulate a signup API call
  Future<User> signup(String email, String password, String name) async {
    if (email.isNotEmpty && password.isNotEmpty && name.isNotEmpty) {
      //ToDo: Call login api and return user or error
      return User();
    } else {
      throw Exception("Signup failed. Please provide all fields.");
    }
  }

  // Simulate a logout API call
  Future<void> logout() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulating network delay
  }
}
