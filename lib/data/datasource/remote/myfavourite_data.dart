import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class MyFavouriteData {
  Crud crud;

  MyFavouriteData(this.crud);

  getData(String usersid) async {
    var response = await crud.postData(
        linkUrl: AppLink.favouriteView,
        data: {"usersid": usersid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
