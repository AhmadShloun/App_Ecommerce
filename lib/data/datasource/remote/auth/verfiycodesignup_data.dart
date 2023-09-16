import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class VerfiyCodeSignUpData {
  Crud crud;

  VerfiyCodeSignUpData(this.crud);

  postData({
    required String email,
    required String verifycode,
  }) async {
    var response = await crud.postData(linkUrl: AppLink.verifycodeSignUp, data: {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }


  resendData({
    required String email,
  }) async {
    var response = await crud.postData(linkUrl: AppLink.resendVerifycodeSignUp, data: {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
