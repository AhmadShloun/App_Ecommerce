class AppLink {
  static const String server = "https://ahmadfm.000webhostapp.com/ecommerce";

  static const String imagesStatic =
      "https://ahmadfm.000webhostapp.com/ecommerce/upload";

  // ===========================images====================

  static const String imagesCategories = "$imagesStatic/categories";
  static const String imagesItems = "$imagesStatic/items";

  static const String test = "$server/test.php";

  // ===========================Auth====================
  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodeSignUp = "$server/auth/verfiycode.php";

  // ===========================Forget password====================
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifycodeForgerPassword =
      "$server/forgetpassword/verifycode.php";

  // ===========================Home ====================
  static const String homepage = "$server/home.php";

  // ===========================Items ====================
  static const String items = "$server/items/items.php";

  // ===========================favourite ====================
  static const String favouriteAdd = "$server/favourite/add.php";
  static const String favouriteRemove = "$server/favourite/remove.php";
  static const String favouriteView = "$server/favourite/view.php";
  static const String deletefromfavourite = "$server/favourite/deletefromfavroite.php";

}
