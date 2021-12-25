import 'dart:convert';

ProductDetail productDetailFromJson(String str) =>
    ProductDetail.fromJson(json.decode(str));

String productDetailToJson(ProductDetail data) => json.encode(data.toJson());

class ProductDetail {
  ProductDetail({
    this.status,
    this.msg,
    this.data,
  });

  String status;
  String msg;
  ProductDetailData data;

  factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
        status: json["status"],
        msg: json["msg"],
        data: ProductDetailData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}

class ProductDetailData {
  ProductDetailData({
    this.currencySymbol,
    this.totalFavouriteItems,
    this.totalUnreadMessageCount,
    this.totalUnreadNotificationCount,
    this.cartItemsCount,
    this.reviews,
    this.codEnabled,
    this.shippingDetails,
    this.optionRows,
    this.productSpecifications,
    this.banners,
    this.product,
    this.shopRating,
    this.shop,
    this.shopTotalReviews,
    this.productImagesArr,
    this.volumeDiscountRows,
    this.socialShareContent,
    this.buyTogether,
    this.relatedProducts,
    this.recommendedProducts,
    this.recentlyViewed,
  });

  String currencySymbol;
  String totalFavouriteItems;
  String totalUnreadMessageCount;
  String totalUnreadNotificationCount;
  String cartItemsCount;
  Reviews reviews;
  String codEnabled;
  Reviews shippingDetails;
  List<dynamic> optionRows;
  BuyTogether productSpecifications;
  List<dynamic> banners;
  Product product;
  String shopRating;
  Shop shop;
  String shopTotalReviews;
  List<dynamic> productImagesArr;
  List<dynamic> volumeDiscountRows;
  SocialShareContent socialShareContent;
  BuyTogether buyTogether;
  BuyTogether relatedProducts;
  BuyTogether recommendedProducts;
  BuyTogether recentlyViewed;

  factory ProductDetailData.fromJson(Map<String, dynamic> json) =>
      ProductDetailData(
        currencySymbol: json["currencySymbol"],
        totalFavouriteItems: json["totalFavouriteItems"],
        totalUnreadMessageCount: json["totalUnreadMessageCount"],
        totalUnreadNotificationCount: json["totalUnreadNotificationCount"],
        cartItemsCount: json["cartItemsCount"],
        reviews: Reviews.fromJson(json["reviews"]),
        codEnabled: json["codEnabled"],
        shippingDetails: Reviews.fromJson(json["shippingDetails"]),
        optionRows: List<dynamic>.from(json["optionRows"].map((x) => x)),
        productSpecifications:
            BuyTogether.fromJson(json["productSpecifications"]),
        banners: List<dynamic>.from(json["banners"].map((x) => x)),
        product: Product.fromJson(json["product"]),
        shopRating: json["shop_rating"],
        shop: Shop.fromJson(json["shop"]),
        shopTotalReviews: json["shopTotalReviews"],
        productImagesArr:
            List<dynamic>.from(json["productImagesArr"].map((x) => x)),
        volumeDiscountRows:
            List<dynamic>.from(json["volumeDiscountRows"].map((x) => x)),
        socialShareContent:
            SocialShareContent.fromJson(json["socialShareContent"]),
        buyTogether: BuyTogether.fromJson(json["buyTogether"]),
        relatedProducts: BuyTogether.fromJson(json["relatedProducts"]),
        recommendedProducts: BuyTogether.fromJson(json["recommendedProducts"]),
        recentlyViewed: BuyTogether.fromJson(json["recentlyViewed"]),
      );

  Map<String, dynamic> toJson() => {
        "currencySymbol": currencySymbol,
        "totalFavouriteItems": totalFavouriteItems,
        "totalUnreadMessageCount": totalUnreadMessageCount,
        "totalUnreadNotificationCount": totalUnreadNotificationCount,
        "cartItemsCount": cartItemsCount,
        "reviews": reviews.toJson(),
        "codEnabled": codEnabled,
        "shippingDetails": shippingDetails.toJson(),
        "optionRows": List<dynamic>.from(optionRows.map((x) => x)),
        "productSpecifications": productSpecifications.toJson(),
        "banners": List<dynamic>.from(banners.map((x) => x)),
        "product": product.toJson(),
        "shop_rating": shopRating,
        "shop": shop.toJson(),
        "shopTotalReviews": shopTotalReviews,
        "productImagesArr": List<dynamic>.from(productImagesArr.map((x) => x)),
        "volumeDiscountRows":
            List<dynamic>.from(volumeDiscountRows.map((x) => x)),
        "socialShareContent": socialShareContent.toJson(),
        "buyTogether": buyTogether.toJson(),
        "relatedProducts": relatedProducts.toJson(),
        "recommendedProducts": recommendedProducts.toJson(),
        "recentlyViewed": recentlyViewed.toJson(),
      };
}

class BuyTogether {
  BuyTogether({
    this.title,
    this.data,
  });

  String title;
  List<dynamic> data;

  factory BuyTogether.fromJson(Map<String, dynamic> json) => BuyTogether(
        title: json["title"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "data": List<dynamic>.from(data.map((x) => x)),
      };
}

class Product {
  Product({
    this.title,
    this.data,
  });

  String title;
  ProductData data;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        title: json["title"],
        data: ProductData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "data": data.toJson(),
      };
}

class ProductData {
  ProductData({
    this.availableInLocation,
    this.isInAnyWishlist,
    this.productId,
    this.productIdentifier,
    this.productName,
    this.productSellerId,
    this.productModel,
    this.productType,
    this.prodcatId,
    this.prodcatName,
    this.productUpc,
    this.productIsbn,
    this.productShortDescription,
    this.productDescription,
    this.selprodId,
    this.selprodUserId,
    this.selprodCode,
    this.selprodCondition,
    this.selprodPrice,
    this.specialPriceFound,
    this.splpriceStartDate,
    this.splpriceEndDate,
    this.selprodTitle,
    this.selprodWarranty,
    this.selprodReturnPolicy,
    this.selprodComments,
    this.theprice,
    this.selprodStock,
    this.selprodThresholdStockLevel,
    this.inStock,
    this.brandId,
    this.brandName,
    this.brandShortDescription,
    this.userName,
    this.shopId,
    this.shopName,
    this.prodRating,
    this.totReviews,
    this.splpriceDisplayDisType,
    this.splpriceDisplayDisVal,
    this.splpriceDisplayListPrice,
    this.productAttrgrpId,
    this.productYoutubeVideo,
    this.productCodEnabled,
    this.selprodCodEnabled,
    this.selprodAvailableFrom,
    this.selprodMinOrderQty,
    this.productUpdatedOn,
    this.productWarranty,
    this.selprodReturnAge,
    this.selprodCancellationAge,
    this.shopReturnAge,
    this.shopCancellationAge,
    this.selprodFulfillmentType,
    this.shopFulfillmentType,
    this.productFulfillmentType,
    this.selectedOptionValues,
    this.moreSellersArr,
    this.selprodReturnPolicies,
    this.selprodWarrantyPolicies,
    this.productPolicies,
    this.inclusiveTax,
    this.youtubeUrlThumbnail,
    this.productUrl,
  });

  String availableInLocation;
  String isInAnyWishlist;
  String productId;
  String productIdentifier;
  String productName;
  String productSellerId;
  String productModel;
  String productType;
  String prodcatId;
  String prodcatName;
  String productUpc;
  String productIsbn;
  String productShortDescription;
  String productDescription;
  String selprodId;
  String selprodUserId;
  String selprodCode;
  String selprodCondition;
  String selprodPrice;
  String specialPriceFound;
  String splpriceStartDate;
  String splpriceEndDate;
  String selprodTitle;
  String selprodWarranty;
  String selprodReturnPolicy;
  String selprodComments;
  String theprice;
  String selprodStock;
  String selprodThresholdStockLevel;
  String inStock;
  String brandId;
  String brandName;
  String brandShortDescription;
  String userName;
  String shopId;
  String shopName;
  String prodRating;
  String totReviews;
  String splpriceDisplayDisType;
  String splpriceDisplayDisVal;
  String splpriceDisplayListPrice;
  String productAttrgrpId;
  String productYoutubeVideo;
  String productCodEnabled;
  String selprodCodEnabled;
  DateTime selprodAvailableFrom;
  String selprodMinOrderQty;
  DateTime productUpdatedOn;
  String productWarranty;
  String selprodReturnAge;
  String selprodCancellationAge;
  String shopReturnAge;
  String shopCancellationAge;
  String selprodFulfillmentType;
  String shopFulfillmentType;
  String productFulfillmentType;
  List<dynamic> selectedOptionValues;
  List<MoreSellersArr> moreSellersArr;
  Reviews selprodReturnPolicies;
  Reviews selprodWarrantyPolicies;
  List<ProductPolicy> productPolicies;
  String inclusiveTax;
  String youtubeUrlThumbnail;
  String productUrl;

  factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
        availableInLocation: json["availableInLocation"],
        isInAnyWishlist: json["is_in_any_wishlist"],
        productId: json["product_id"],
        productIdentifier: json["product_identifier"],
        productName: json["product_name"],
        productSellerId: json["product_seller_id"],
        productModel: json["product_model"],
        productType: json["product_type"],
        prodcatId: json["prodcat_id"],
        prodcatName: json["prodcat_name"],
        productUpc: json["product_upc"],
        productIsbn: json["product_isbn"],
        productShortDescription: json["product_short_description"],
        productDescription: json["product_description"],
        selprodId: json["selprod_id"],
        selprodUserId: json["selprod_user_id"],
        selprodCode: json["selprod_code"],
        selprodCondition: json["selprod_condition"],
        selprodPrice: json["selprod_price"],
        specialPriceFound: json["special_price_found"],
        splpriceStartDate: json["splprice_start_date"],
        splpriceEndDate: json["splprice_end_date"],
        selprodTitle: json["selprod_title"],
        selprodWarranty: json["selprod_warranty"],
        selprodReturnPolicy: json["selprod_return_policy"],
        selprodComments: json["selprodComments"],
        theprice: json["theprice"],
        selprodStock: json["selprod_stock"],
        selprodThresholdStockLevel: json["selprod_threshold_stock_level"],
        inStock: json["in_stock"],
        brandId: json["brand_id"],
        brandName: json["brand_name"],
        brandShortDescription: json["brand_short_description"],
        userName: json["user_name"],
        shopId: json["shop_id"],
        shopName: json["shop_name"],
        prodRating: json["prod_rating"],
        totReviews: json["totReviews"],
        splpriceDisplayDisType: json["splprice_display_dis_type"],
        splpriceDisplayDisVal: json["splprice_display_dis_val"],
        splpriceDisplayListPrice: json["splprice_display_list_price"],
        productAttrgrpId: json["product_attrgrp_id"],
        productYoutubeVideo: json["product_youtube_video"],
        productCodEnabled: json["product_cod_enabled"],
        selprodCodEnabled: json["selprod_cod_enabled"],
        selprodAvailableFrom: DateTime.parse(json["selprod_available_from"]),
        selprodMinOrderQty: json["selprod_min_order_qty"],
        productUpdatedOn: DateTime.parse(json["product_updated_on"]),
        productWarranty: json["product_warranty"],
        selprodReturnAge: json["selprod_return_age"],
        selprodCancellationAge: json["selprod_cancellation_age"],
        shopReturnAge: json["shop_return_age"],
        shopCancellationAge: json["shop_cancellation_age"],
        selprodFulfillmentType: json["selprod_fulfillment_type"],
        shopFulfillmentType: json["shop_fulfillment_type"],
        productFulfillmentType: json["product_fulfillment_type"],
        selectedOptionValues:
            List<dynamic>.from(json["selectedOptionValues"].map((x) => x)),
        moreSellersArr: List<MoreSellersArr>.from(
            json["moreSellersArr"].map((x) => MoreSellersArr.fromJson(x))),
        selprodReturnPolicies:
            Reviews.fromJson(json["selprod_return_policies"]),
        selprodWarrantyPolicies:
            Reviews.fromJson(json["selprod_warranty_policies"]),
        productPolicies: List<ProductPolicy>.from(
            json["productPolicies"].map((x) => ProductPolicy.fromJson(x))),
        inclusiveTax: json["inclusiveTax"],
        youtubeUrlThumbnail: json["youtubeUrlThumbnail"],
        productUrl: json["productUrl"],
      );

  get obs => null;

  Map<String, dynamic> toJson() => {
        "availableInLocation": availableInLocation,
        "is_in_any_wishlist": isInAnyWishlist,
        "product_id": productId,
        "product_identifier": productIdentifier,
        "product_name": productName,
        "product_seller_id": productSellerId,
        "product_model": productModel,
        "product_type": productType,
        "prodcat_id": prodcatId,
        "prodcat_name": prodcatName,
        "product_upc": productUpc,
        "product_isbn": productIsbn,
        "product_short_description": productShortDescription,
        "product_description": productDescription,
        "selprod_id": selprodId,
        "selprod_user_id": selprodUserId,
        "selprod_code": selprodCode,
        "selprod_condition": selprodCondition,
        "selprod_price": selprodPrice,
        "special_price_found": specialPriceFound,
        "splprice_start_date": splpriceStartDate,
        "splprice_end_date": splpriceEndDate,
        "selprod_title": selprodTitle,
        "selprod_warranty": selprodWarranty,
        "selprod_return_policy": selprodReturnPolicy,
        "selprodComments": selprodComments,
        "theprice": theprice,
        "selprod_stock": selprodStock,
        "selprod_threshold_stock_level": selprodThresholdStockLevel,
        "in_stock": inStock,
        "brand_id": brandId,
        "brand_name": brandName,
        "brand_short_description": brandShortDescription,
        "user_name": userName,
        "shop_id": shopId,
        "shop_name": shopName,
        "prod_rating": prodRating,
        "totReviews": totReviews,
        "splprice_display_dis_type": splpriceDisplayDisType,
        "splprice_display_dis_val": splpriceDisplayDisVal,
        "splprice_display_list_price": splpriceDisplayListPrice,
        "product_attrgrp_id": productAttrgrpId,
        "product_youtube_video": productYoutubeVideo,
        "product_cod_enabled": productCodEnabled,
        "selprod_cod_enabled": selprodCodEnabled,
        "selprod_available_from": selprodAvailableFrom.toIso8601String(),
        "selprod_min_order_qty": selprodMinOrderQty,
        "product_updated_on": productUpdatedOn.toIso8601String(),
        "product_warranty": productWarranty,
        "selprod_return_age": selprodReturnAge,
        "selprod_cancellation_age": selprodCancellationAge,
        "shop_return_age": shopReturnAge,
        "shop_cancellation_age": shopCancellationAge,
        "selprod_fulfillment_type": selprodFulfillmentType,
        "shop_fulfillment_type": shopFulfillmentType,
        "product_fulfillment_type": productFulfillmentType,
        "selectedOptionValues":
            List<dynamic>.from(selectedOptionValues.map((x) => x)),
        "moreSellersArr":
            List<dynamic>.from(moreSellersArr.map((x) => x.toJson())),
        "selprod_return_policies": selprodReturnPolicies.toJson(),
        "selprod_warranty_policies": selprodWarrantyPolicies.toJson(),
        "productPolicies":
            List<dynamic>.from(productPolicies.map((x) => x.toJson())),
        "inclusiveTax": inclusiveTax,
        "youtubeUrlThumbnail": youtubeUrlThumbnail,
        "productUrl": productUrl,
      };

  fetchProductsDetails({String query}) {}
}

class MoreSellersArr {
  MoreSellersArr({
    this.availableInLocation,
    this.selprodId,
    this.selprodUserId,
    this.selprodPrice,
    this.specialPriceFound,
    this.theprice,
    this.shopId,
    this.shopName,
    this.productSellerId,
    this.productId,
    this.shopCountryName,
    this.shopStateName,
    this.shopCity,
    this.selprodCodEnabled,
    this.productCodEnabled,
    this.inStock,
    this.selprodMinOrderQty,
    this.selprodAvailableFrom,
  });

  String availableInLocation;
  String selprodId;
  String selprodUserId;
  String selprodPrice;
  String specialPriceFound;
  String theprice;
  String shopId;
  String shopName;
  String productSellerId;
  String productId;
  String shopCountryName;
  String shopStateName;
  String shopCity;
  String selprodCodEnabled;
  String productCodEnabled;
  String inStock;
  String selprodMinOrderQty;
  DateTime selprodAvailableFrom;

  factory MoreSellersArr.fromJson(Map<String, dynamic> json) => MoreSellersArr(
        availableInLocation: json["availableInLocation"],
        selprodId: json["selprod_id"],
        selprodUserId: json["selprod_user_id"],
        selprodPrice: json["selprod_price"],
        specialPriceFound: json["special_price_found"],
        theprice: json["theprice"],
        shopId: json["shop_id"],
        shopName: json["shop_name"],
        productSellerId: json["product_seller_id"],
        productId: json["product_id"],
        shopCountryName: json["shop_country_name"],
        shopStateName: json["shop_state_name"],
        shopCity: json["shop_city"],
        selprodCodEnabled: json["selprod_cod_enabled"],
        productCodEnabled: json["product_cod_enabled"],
        inStock: json["in_stock"],
        selprodMinOrderQty: json["selprod_min_order_qty"],
        selprodAvailableFrom: DateTime.parse(json["selprod_available_from"]),
      );

  Map<String, dynamic> toJson() => {
        "availableInLocation": availableInLocation,
        "selprod_id": selprodId,
        "selprod_user_id": selprodUserId,
        "selprod_price": selprodPrice,
        "special_price_found": specialPriceFound,
        "theprice": theprice,
        "shop_id": shopId,
        "shop_name": shopName,
        "product_seller_id": productSellerId,
        "product_id": productId,
        "shop_country_name": shopCountryName,
        "shop_state_name": shopStateName,
        "shop_city": shopCity,
        "selprod_cod_enabled": selprodCodEnabled,
        "product_cod_enabled": productCodEnabled,
        "in_stock": inStock,
        "selprod_min_order_qty": selprodMinOrderQty,
        "selprod_available_from": selprodAvailableFrom.toIso8601String(),
      };
}

class ProductPolicy {
  ProductPolicy({
    this.title,
    this.isSvg,
    this.icon,
  });

  String title;
  String isSvg;
  String icon;

  factory ProductPolicy.fromJson(Map<String, dynamic> json) => ProductPolicy(
        title: json["title"],
        isSvg: json["isSvg"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "isSvg": isSvg,
        "icon": icon,
      };
}

class Reviews {
  Reviews();

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews();

  Map<String, dynamic> toJson() => {};
}

class Shop {
  Shop({
    this.shopId,
    this.shopUserId,
    this.shopLtemplateId,
    this.shopCreatedOn,
    this.shopName,
    this.shopDescription,
    this.shopPaymentPolicy,
    this.shopDeliveryPolicy,
    this.shopRefundPolicy,
    this.shopCountryName,
    this.shopStateName,
    this.shopCity,
  });

  String shopId;
  String shopUserId;
  String shopLtemplateId;
  DateTime shopCreatedOn;
  String shopName;
  String shopDescription;
  String shopPaymentPolicy;
  String shopDeliveryPolicy;
  String shopRefundPolicy;
  String shopCountryName;
  String shopStateName;
  String shopCity;

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        shopId: json["shop_id"],
        shopUserId: json["shop_user_id"],
        shopLtemplateId: json["shop_ltemplate_id"],
        shopCreatedOn: DateTime.parse(json["shop_created_on"]),
        shopName: json["shop_name"],
        shopDescription: json["shop_description"],
        shopPaymentPolicy: json["shop_payment_policy"],
        shopDeliveryPolicy: json["shop_delivery_policy"],
        shopRefundPolicy: json["shop_refund_policy"],
        shopCountryName: json["shop_country_name"],
        shopStateName: json["shop_state_name"],
        shopCity: json["shop_city"],
      );

  Map<String, dynamic> toJson() => {
        "shop_id": shopId,
        "shop_user_id": shopUserId,
        "shop_ltemplate_id": shopLtemplateId,
        "shop_created_on": shopCreatedOn.toIso8601String(),
        "shop_name": shopName,
        "shop_description": shopDescription,
        "shop_payment_policy": shopPaymentPolicy,
        "shop_delivery_policy": shopDeliveryPolicy,
        "shop_refund_policy": shopRefundPolicy,
        "shop_country_name": shopCountryName,
        "shop_state_name": shopStateName,
        "shop_city": shopCity,
      };
}

class SocialShareContent {
  SocialShareContent({
    this.type,
    this.title,
    this.description,
    this.image,
  });

  String type;
  String title;
  String description;
  String image;

  factory SocialShareContent.fromJson(Map<String, dynamic> json) =>
      SocialShareContent(
        type: json["type"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "title": title,
        "description": description,
        "image": image,
      };
}
