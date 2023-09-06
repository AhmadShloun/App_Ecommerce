import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postData({
    required String email,
    required String password,
  }) async {
    var response = await crud.postData(linkUrl: AppLink.login, data: {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
