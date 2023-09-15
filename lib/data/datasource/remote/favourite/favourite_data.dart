import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class FavouriteData {
  Crud crud;

  FavouriteData(this.crud);

  addFavourite(String usersid, String itemsid) async {
    var response = await crud.postData(
        linkUrl: AppLink.favouriteAdd,
        data: {"usersid": usersid.toString(), "itemsid": itemsid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  removeFavourite(String usersid, String itemsid) async {
    var response = await crud.postData(
        linkUrl: AppLink.favouriteRemove,
        data: {"usersid": usersid.toString(), "itemsid": itemsid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
