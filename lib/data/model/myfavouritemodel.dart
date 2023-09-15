class MyFavouriteModel {
  String? favouriteId;
  String? favouriteUsersid;
  String? favouriteItemsid;
  String? itemsId;
  String? itemsCat;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  String? itemsCount;
  String? itemsActive;
  String? itemsPrice;
  String? itemsDiscount;
  String? itemsDate;
  String? usersId;

  MyFavouriteModel(
      {this.favouriteId,
        this.favouriteUsersid,
        this.favouriteItemsid,
        this.itemsId,
        this.itemsCat,
        this.itemsName,
        this.itemsNameAr,
        this.itemsDesc,
        this.itemsDescAr,
        this.itemsImage,
        this.itemsCount,
        this.itemsActive,
        this.itemsPrice,
        this.itemsDiscount,
        this.itemsDate,
        this.usersId});

  MyFavouriteModel.fromJson(Map<String, dynamic> json) {
    favouriteId = json['favourite_id'];
    favouriteUsersid = json['favourite_usersid'];
    favouriteItemsid = json['favourite_itemsid'];
    itemsId = json['items_id'];
    itemsCat = json['items_cat'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemsDescAr = json['items_desc_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscount = json['items_discount'];
    itemsDate = json['items_date'];
    usersId = json['users_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['favourite_id'] = favouriteId;
    data['favourite_usersid'] = favouriteUsersid;
    data['favourite_itemsid'] = favouriteItemsid;
    data['items_id'] = itemsId;
    data['items_cat'] = itemsCat;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_desc'] = itemsDesc;
    data['items_desc_ar'] = itemsDescAr;
    data['items_image'] = itemsImage;
    data['items_count'] = itemsCount;
    data['items_active'] = itemsActive;
    data['items_price'] = itemsPrice;
    data['items_discount'] = itemsDiscount;
    data['items_date'] = itemsDate;
    data['users_id'] = usersId;
    return data;
  }
}
