import 'package:e_commerce/src/utils/user_preferency.dart';

class UserRepository {
  Future<void> saveLogin({required String username, required String password, required String email}) async {
    await UserPreferency.setUsername(username);
    await UserPreferency.setPassword(password);
    await UserPreferency.setEmail(email);
  }
  Future<bool> loginAuto() async {
    final String? username = UserPreferency.getUsername();
    final String? password = UserPreferency.getPassword();
    final String? email = UserPreferency.getEmail();
    if(username != null && password != null && email != null) return loginDefault(username: username, password: password, email: email);
    return false;
  }
  bool loginDefault({required String username, required String password, required String email}){
    return (username == 'admin' && password == 'admin' && email == 'admin@gmail.com');
  }
  Future logout() async {
    UserPreferency.reset();
  }
}