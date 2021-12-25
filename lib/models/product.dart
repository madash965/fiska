import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.status,
    this.msg,
    this.data,
  });

  String status;
  String msg;
  Data data;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        status: json["status"],
        msg: json["msg"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.currencySymbol,
    this.totalFavouriteItems,
    this.totalUnreadMessageCount,
    this.totalUnreadNotificationCount,
    this.cartItemsCount,
    this.products,
    this.category,
    this.categoryId,
    this.postedData,
    this.page,
    this.pageCount,
    this.pageSize,
    this.recordCount,
    this.siteLangId,
    this.pageTitle,
    this.canonicalUrl,
    this.productSearchPageType,
    this.bannerListigUrl,
  });

  String currencySymbol;
  String totalFavouriteItems;
  String totalUnreadMessageCount;
  String totalUnreadNotificationCount;
  String cartItemsCount;
  List<ProductElement> products;
  List<dynamic> category;
  String categoryId;
  PostedData postedData;
  String page;
  String pageCount;
  String pageSize;
  String recordCount;
  String siteLangId;
  String pageTitle;
  String canonicalUrl;
  String productSearchPageType;
  String bannerListigUrl;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        currencySymbol: json["currencySymbol"],
        totalFavouriteItems: json["totalFavouriteItems"],
        totalUnreadMessageCount: json["totalUnreadMessageCount"],
        totalUnreadNotificationCount: json["totalUnreadNotificationCount"],
        cartItemsCount: json["cartItemsCount"],
        products: List<ProductElement>.from(
            json["products"].map((x) => ProductElement.fromJson(x))),
        category: List<dynamic>.from(json["category"].map((x) => x)),
        categoryId: json["categoryId"],
        postedData: PostedData.fromJson(json["postedData"]),
        page: json["page"],
        pageCount: json["pageCount"],
        pageSize: json["pageSize"],
        recordCount: json["recordCount"],
        siteLangId: json["siteLangId"],
        pageTitle: json["pageTitle"],
        canonicalUrl: json["canonicalUrl"],
        productSearchPageType: json["productSearchPageType"],
        bannerListigUrl: json["bannerListigUrl"],
      );

  Map<String, dynamic> toJson() => {
        "currencySymbol": currencySymbol,
        "totalFavouriteItems": totalFavouriteItems,
        "totalUnreadMessageCount": totalUnreadMessageCount,
        "totalUnreadNotificationCount": totalUnreadNotificationCount,
        "cartItemsCount": cartItemsCount,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "category": List<dynamic>.from(category.map((x) => x)),
        "categoryId": categoryId,
        "postedData": postedData.toJson(),
        "page": page,
        "pageCount": pageCount,
        "pageSize": pageSize,
        "recordCount": recordCount,
        "siteLangId": siteLangId,
        "pageTitle": pageTitle,
        "canonicalUrl": canonicalUrl,
        "productSearchPageType": productSearchPageType,
        "bannerListigUrl": bannerListigUrl,
      };
}

class PostedData {
  PostedData({
    this.joinPrice,
    this.featured,
  });

  String joinPrice;
  String featured;

  factory PostedData.fromJson(Map<String, dynamic> json) => PostedData(
        joinPrice: json["join_price"],
        featured: json["featured"],
      );

  Map<String, dynamic> toJson() => {
        "join_price": joinPrice,
        "featured": featured,
      };
}

class ProductElement {
  ProductElement({
    this.availableInLocation,
    this.isInAnyWishlist,
    this.prodcatCode,
    this.productId,
    this.prodcatId,
    this.productName,
    this.productModel,
    this.productUpdatedOn,
    this.prodcatName,
    this.selprodId,
    this.selprodUserId,
    this.selprodCode,
    this.selprodStock,
    this.selprodCondition,
    this.selprodPrice,
    this.selprodTitle,
    this.splpriceDisplayListPrice,
    this.splpriceDisplayDisVal,
    this.splpriceDisplayDisType,
    this.splpriceStartDate,
    this.splpriceEndDate,
    this.brandId,
    this.brandName,
    this.userName,
    this.inStock,
    this.selprodSoldCount,
    this.selprodReturnPolicy,
    this.selprodMinOrderQty,
    this.prodRating,
    this.theprice,
    this.specialPriceFound,
    this.productImageUrl,
  });

  String availableInLocation;
  String isInAnyWishlist;
  String prodcatCode;
  String productId;
  String prodcatId;
  String productName;
  String productModel;
  DateTime productUpdatedOn;
  String prodcatName;
  String selprodId;
  String selprodUserId;
  String selprodCode;
  String selprodStock;
  String selprodCondition;
  String selprodPrice;
  String selprodTitle;
  String splpriceDisplayListPrice;
  String splpriceDisplayDisVal;
  String splpriceDisplayDisType;
  String splpriceStartDate;
  String splpriceEndDate;
  String brandId;
  String brandName;
  String userName;
  String inStock;
  String selprodSoldCount;
  String selprodReturnPolicy;
  String selprodMinOrderQty;
  String prodRating;
  String theprice;
  String specialPriceFound;
  String productImageUrl;

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        availableInLocation: json["availableInLocation"],
        isInAnyWishlist: json["is_in_any_wishlist"],
        prodcatCode: json["prodcat_code"],
        productId: json["product_id"],
        prodcatId: json["prodcat_id"],
        productName: json["product_name"],
        productModel: json["product_model"],
        productUpdatedOn: DateTime.parse(json["product_updated_on"]),
        prodcatName: json["prodcat_name"],
        selprodId: json["selprod_id"],
        selprodUserId: json["selprod_user_id"],
        selprodCode: json["selprod_code"],
        selprodStock: json["selprod_stock"],
        selprodCondition: json["selprod_condition"],
        selprodPrice: json["selprod_price"],
        selprodTitle: json["selprod_title"],
        splpriceDisplayListPrice: json["splprice_display_list_price"],
        splpriceDisplayDisVal: json["splprice_display_dis_val"],
        splpriceDisplayDisType: json["splprice_display_dis_type"],
        splpriceStartDate: json["splprice_start_date"],
        splpriceEndDate: json["splprice_end_date"],
        brandId: json["brand_id"],
        brandName: json["brand_name"],
        userName: json["user_name"],
        inStock: json["in_stock"],
        selprodSoldCount: json["selprod_sold_count"],
        selprodReturnPolicy: json["selprod_return_policy"],
        selprodMinOrderQty: json["selprod_min_order_qty"],
        prodRating: json["prod_rating"],
        theprice: json["theprice"],
        specialPriceFound: json["special_price_found"],
        productImageUrl: json["product_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "availableInLocation": availableInLocation,
        "is_in_any_wishlist": isInAnyWishlist,
        "prodcat_code": prodcatCode,
        "product_id": productId,
        "prodcat_id": prodcatId,
        "product_name": productName,
        "product_model": productModel,
        "product_updated_on": productUpdatedOn.toIso8601String(),
        "prodcat_name": prodcatName,
        "selprod_id": selprodId,
        "selprod_user_id": selprodUserId,
        "selprod_code": selprodCode,
        "selprod_stock": selprodStock,
        "selprod_condition": selprodCondition,
        "selprod_price": selprodPrice,
        "selprod_title": selprodTitle,
        "splprice_display_list_price": splpriceDisplayListPrice,
        "splprice_display_dis_val": splpriceDisplayDisVal,
        "splprice_display_dis_type": splpriceDisplayDisType,
        "splprice_start_date": splpriceStartDate,
        "splprice_end_date": splpriceEndDate,
        "brand_id": brandId,
        "brand_name": brandName,
        "user_name": userName,
        "in_stock": inStock,
        "selprod_sold_count": selprodSoldCount,
        "selprod_return_policy": selprodReturnPolicy,
        "selprod_min_order_qty": selprodMinOrderQty,
        "prod_rating": prodRating,
        "theprice": theprice,
        "special_price_found": specialPriceFound,
        "product_image_url": productImageUrl,
      };
}
