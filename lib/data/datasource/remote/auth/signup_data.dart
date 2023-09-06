import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData({
    required String username,
    required String email,
    required String phone,
    required String password,
  }) async {
    var response = await crud.postData(linkUrl: AppLink.signUp, data: {
      "username": username,
      "email": email,
      "phone": phone,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
