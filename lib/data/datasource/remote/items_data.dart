import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class ItemsData {
  Crud crud;

  ItemsData(this.crud);

  getData(String catid , String userid) async {
    var response =
        await crud.postData(linkUrl: AppLink.items, data: {"catid" : catid.toString() , "usersid": userid.toString() });
    return response.fold((l) => l, (r) => r);
  }
}
