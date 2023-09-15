import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();

  getData();

  goToItems(List categories, int selectedCat, String categoryId, String id);

  goToMyFavourite();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  HomeData homeData = HomeData(Get.find());
  late StatusRequest statusRequest;
  List categories = [];
  List items = [];
  String? lang;

  String? id;
  String? username;

  @override
  initialData() {
    id = myServices.sharedPreferences.getString('id');
    username = myServices.sharedPreferences.getString('username');
    lang = myServices.sharedPreferences.getString('lang');
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']['data']);
        items.addAll(response['items']['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    initialData();
    super.onInit();
  }

  @override
  goToItems(categories, selectedCat, categoryId, id) {
    Get.toNamed(AppRoute.items, arguments: {
      "categories": categories,
      "selectedId": selectedCat,
      "catId": categoryId,
    });
  }

  @override
  goToMyFavourite() {
    Get.toNamed(AppRoute.myfavourite);
  }
}
