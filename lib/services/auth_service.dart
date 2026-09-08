import '../models/user.dart';

class AuthService {
  static User? currentUser;

  static void login(User user) {
    currentUser = user;
  }

  static User? getUser() {
    return currentUser;
  }
}
