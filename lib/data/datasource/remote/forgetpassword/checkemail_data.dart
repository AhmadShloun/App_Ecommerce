import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);

  postData({
    required String email,
  }) async {
    var response = await crud.postData(linkUrl: AppLink.checkEmail, data: {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
