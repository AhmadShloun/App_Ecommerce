import 'package:ecommerce/controller/cart_controller.dart';
import 'package:ecommerce/data/model/ItemsModel.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {
  intialData();
}

class ProductDetailsControllerImp extends ProductDetailsController {

  CartControllerImp cartController = Get.put(CartControllerImp());

  late ItemsModel itemsModel;

  List subItems = [
    {"name": "red", "id": 1, "active": "1"},
    {"name": "Blue", "id": 1, "active": "0"},
    {"name": "Green", "id": 1, "active": "0"},
    {"name": "Yellow", "id": 1, "active": "0"}
  ];

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    itemsModel = Get.arguments['itemsmodel'];
  }
}
