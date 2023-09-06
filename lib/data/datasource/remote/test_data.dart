import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class TestData{
  Crud crud;
  TestData(this.crud);
  getData() async{
    var response = await crud.postData(linkUrl:AppLink.test ,data: {});
    return response.fold((l) => l, (r) => r);
  }
}