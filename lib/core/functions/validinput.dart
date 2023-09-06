import 'package:get/get.dart';

validInput({required String val, required int min, required int max, required String type}) {
  if (val.isEmpty) {
    return "28".tr;
  }
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return '29'.tr;
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return '30'.tr;
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return '31'.tr;
    }
  }

  if (val.length < min) {
    return "${"32".tr} $min";
  }
  if (val.length > max) {
    return "${"33".tr} $max";
  }
}
