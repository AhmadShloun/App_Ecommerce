import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/favourite/myfavourite_data.dart';
import 'package:ecommerce/data/model/myfavouritemodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class MyFavouriteController extends GetxController {
  getData();
  deleteFromFavourite(String favid);
}

class MyFavouriteControllerImp extends MyFavouriteController {
  MyFavouriteData favouriteData = MyFavouriteData(Get.find());
  List<MyFavouriteModel> data = [];
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await favouriteData
        .getData(myServices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List responseData = response['data'];
        data.addAll(responseData.map((e) => MyFavouriteModel.fromJson(e)));
        print("==========data==========");
        print(data);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }


  @override
  deleteFromFavourite(favid)  {
    // statusRequest = StatusRequest.loading;
    var response =  favouriteData.deleteData(favid);
    data.removeWhere((element) => element.favouriteId == favid);
    Get.rawSnackbar(title: "اشعار" , messageText: const Text("تم حذف المنتج من المفضلة"));
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
