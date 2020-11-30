abstract class IAuthRepo {
  Future login(String email, String pass);
  Future register(String name, String password, String email, String phone);
  Future forgetpassword(String email);
  Future verfiycode(String code, String phone);
}
