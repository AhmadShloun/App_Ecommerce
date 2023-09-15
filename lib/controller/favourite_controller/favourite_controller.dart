import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/favourite/favourite_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class FavouriteController extends GetxController {
  setFavourite(id,  val);
  addFavourite(String  itemsid);
  removeFavourite(String itemsid);
}

class FavouriteControllerImp extends FavouriteController {


  FavouriteData favouriteData = FavouriteData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();
  Map isFavourite = {};

  @override
  setFavourite(id, val) {
    isFavourite[id] = val;
    update();
  }

  @override
  addFavourite(itemsid) async {
    statusRequest = StatusRequest.loading;
    var response = await favouriteData.addFavourite(myServices.sharedPreferences.getString("id")!, itemsid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(title: "اشعار" , messageText: const Text("تم اضافة المنتج الى المفضلة"));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    // update();
  }

  @override
  removeFavourite(itemsid) async {
    statusRequest = StatusRequest.loading;
    var response = await favouriteData.removeFavourite(myServices.sharedPreferences.getString("id")!, itemsid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(title: "اشعار" , messageText: const Text("تم حذف المنتج الى المفضلة"));

        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    // update();
  }
}
