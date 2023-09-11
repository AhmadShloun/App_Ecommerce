import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/data/datasource/remote/items_data.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeSelectedCat(int val,String categoryId);
  getItems(String categoryId,);
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selectedCat;
  late String  catId;

  ItemsData itemsData = ItemsData(Get.find());
  List data = [];
  late StatusRequest statusRequest;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedId'];
    catId = Get.arguments['catId'];
    getItems(catId);
  }


  @override
  changeSelectedCat(val,categoryId) {
    selectedCat = val;
    catId = categoryId;
    getItems(catId);

    update();
  }

  @override
  getItems(categoryId) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData(categoryId);
    // print("==========================================$response==========================");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // start backend
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}