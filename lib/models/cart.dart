import 'dart:convert';

import 'package:flutter/material.dart';

Cart cartFromJson(String str) => Cart.fromJson(json.decode(str));

String cartToJson(Cart data) => json.encode(data.toJson());

class Cart {
  Cart({
    this.status,
    this.msg,
    this.data,
  });

  String status;
  String msg;
  CartData data;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        status: json["status"],
        msg: json["msg"],
        data: CartData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}

class CartData {
  CartData({
    this.currencySymbol,
    this.totalFavouriteItems,
    this.totalUnreadMessageCount,
    this.totalUnreadNotificationCount,
    this.cartItemsCount,
    this.products,
    this.cartSummary,
    this.cartSelectedBillingAddress,
    this.cartSelectedShippingAddress,
    this.hasPhysicalProduct,
    this.isShippingSameAsBilling,
    this.selectedBillingAddressId,
    this.selectedShippingAddressId,
    this.cartProductsCount,
    this.shipProductsCount,
    this.pickUpProductsCount,
    this.userWalletBalance,
    this.displayUserWalletBalance,
    this.rewardPoints,
    this.canBeUseRp,
    this.canBeUseRpAmt,
    this.walletCharged,
    this.remainingWalletBalance,
    this.displayRemainingWalletBalance,
    this.orderNetAmount,
    this.priceDetail,
    this.netPayable,
  });

  String currencySymbol;
  String totalFavouriteItems;
  String totalUnreadMessageCount;
  String totalUnreadNotificationCount;
  String cartItemsCount;
  Products products;
  CartSummary cartSummary;
  CartSelectedBillingAddressClass cartSelectedBillingAddress;
  CartSelectedBillingAddressClass cartSelectedShippingAddress;
  String hasPhysicalProduct;
  String isShippingSameAsBilling;
  String selectedBillingAddressId;
  String selectedShippingAddressId;
  String cartProductsCount;
  String shipProductsCount;
  String pickUpProductsCount;
  String userWalletBalance;
  String displayUserWalletBalance;
  String rewardPoints;
  String canBeUseRp;
  String canBeUseRpAmt;
  String walletCharged;
  String remainingWalletBalance;
  String displayRemainingWalletBalance;
  String orderNetAmount;
  List<NetPayable> priceDetail;
  NetPayable netPayable;

  factory CartData.fromJson(Map<String, dynamic> json) => CartData(
        currencySymbol: json["currencySymbol"],
        totalFavouriteItems: json["totalFavouriteItems"],
        totalUnreadMessageCount: json["totalUnreadMessageCount"],
        totalUnreadNotificationCount: json["totalUnreadNotificationCount"],
        cartItemsCount: json["cartItemsCount"],
        products: Products.fromJson(json["products"]),
        cartSummary: CartSummary.fromJson(json["cartSummary"]),
        cartSelectedBillingAddress: CartSelectedBillingAddressClass.fromJson(
            json["cartSelectedBillingAddress"]),
        cartSelectedShippingAddress: CartSelectedBillingAddressClass.fromJson(
            json["cartSelectedShippingAddress"]),
        hasPhysicalProduct: json["hasPhysicalProduct"],
        isShippingSameAsBilling: json["isShippingSameAsBilling"],
        selectedBillingAddressId: json["selectedBillingAddressId"],
        selectedShippingAddressId: json["selectedShippingAddressId"],
        cartProductsCount: json["cartProductsCount"],
        shipProductsCount: json["shipProductsCount"],
        pickUpProductsCount: json["pickUpProductsCount"],
        userWalletBalance: json["userWalletBalance"],
        displayUserWalletBalance: json["displayUserWalletBalance"],
        rewardPoints: json["rewardPoints"],
        canBeUseRp: json["canBeUseRP"],
        canBeUseRpAmt: json["canBeUseRPAmt"],
        walletCharged: json["walletCharged"],
        remainingWalletBalance: json["remainingWalletBalance"],
        displayRemainingWalletBalance: json["displayRemainingWalletBalance"],
        orderNetAmount: json["orderNetAmount"],
        priceDetail: List<NetPayable>.from(
            json["priceDetail"].map((x) => NetPayable.fromJson(x))),
        netPayable: NetPayable.fromJson(json["netPayable"]),
      );

  Map<String, dynamic> toJson() => {
        "currencySymbol": currencySymbol,
        "totalFavouriteItems": totalFavouriteItems,
        "totalUnreadMessageCount": totalUnreadMessageCount,
        "totalUnreadNotificationCount": totalUnreadNotificationCount,
        "cartItemsCount": cartItemsCount,
        "products": products.toJson(),
        "cartSummary": cartSummary.toJson(),
        "cartSelectedBillingAddress": cartSelectedBillingAddress.toJson(),
        "cartSelectedShippingAddress": cartSelectedShippingAddress.toJson(),
        "hasPhysicalProduct": hasPhysicalProduct,
        "isShippingSameAsBilling": isShippingSameAsBilling,
        "selectedBillingAddressId": selectedBillingAddressId,
        "selectedShippingAddressId": selectedShippingAddressId,
        "cartProductsCount": cartProductsCount,
        "shipProductsCount": shipProductsCount,
        "pickUpProductsCount": pickUpProductsCount,
        "userWalletBalance": userWalletBalance,
        "displayUserWalletBalance": displayUserWalletBalance,
        "rewardPoints": rewardPoints,
        "canBeUseRP": canBeUseRp,
        "canBeUseRPAmt": canBeUseRpAmt,
        "walletCharged": walletCharged,
        "remainingWalletBalance": remainingWalletBalance,
        "displayRemainingWalletBalance": displayRemainingWalletBalance,
        "orderNetAmount": orderNetAmount,
        "priceDetail": List<dynamic>.from(priceDetail.map((x) => x.toJson())),
        "netPayable": netPayable.toJson(),
      };
}

class CartSelectedBillingAddressClass {
  CartSelectedBillingAddressClass();

  factory CartSelectedBillingAddressClass.fromJson(Map<String, dynamic> json) =>
      CartSelectedBillingAddressClass();

  Map<String, dynamic> toJson() => {};
}

class CartSummary {
  CartSummary({
    this.cartTotal,
    this.shippingTotal,
    this.originalShipping,
    this.cartTaxTotal,
    this.cartDiscounts,
    this.cartVolumeDiscount,
    this.cartRewardPoints,
    this.cartWalletSelected,
    this.siteCommission,
    this.orderNetAmount,
    this.walletAmountCharge,
    this.isCodEnabled,
    this.isCodValidForNetAmt,
    this.orderPaymentGatewayCharges,
    this.netChargeAmount,
    this.taxOptions,
    this.prodTaxOptions,
    this.roundingOff,
  });

  String cartTotal;
  String shippingTotal;
  String originalShipping;
  String cartTaxTotal;
  CartSelectedBillingAddressClass cartDiscounts;
  String cartVolumeDiscount;
  String cartRewardPoints;
  String cartWalletSelected;
  String siteCommission;
  String orderNetAmount;
  String walletAmountCharge;
  String isCodEnabled;
  String isCodValidForNetAmt;
  String orderPaymentGatewayCharges;
  String netChargeAmount;
  List<dynamic> taxOptions;
  List<dynamic> prodTaxOptions;
  String roundingOff;

  factory CartSummary.fromJson(Map<String, dynamic> json) => CartSummary(
        cartTotal: json["cartTotal"],
        shippingTotal: json["shippingTotal"],
        originalShipping: json["originalShipping"],
        cartTaxTotal: json["cartTaxTotal"],
        cartDiscounts:
            CartSelectedBillingAddressClass.fromJson(json["cartDiscounts"]),
        cartVolumeDiscount: json["cartVolumeDiscount"],
        cartRewardPoints: json["cartRewardPoints"],
        cartWalletSelected: json["cartWalletSelected"],
        siteCommission: json["siteCommission"],
        orderNetAmount: json["orderNetAmount"],
        walletAmountCharge: json["WalletAmountCharge"],
        isCodEnabled: json["isCodEnabled"],
        isCodValidForNetAmt: json["isCodValidForNetAmt"],
        orderPaymentGatewayCharges: json["orderPaymentGatewayCharges"],
        netChargeAmount: json["netChargeAmount"],
        taxOptions: List<dynamic>.from(json["taxOptions"].map((x) => x)),
        prodTaxOptions:
            List<dynamic>.from(json["prodTaxOptions"].map((x) => x)),
        roundingOff: json["roundingOff"],
      );

  Map<String, dynamic> toJson() => {
        "cartTotal": cartTotal,
        "shippingTotal": shippingTotal,
        "originalShipping": originalShipping,
        "cartTaxTotal": cartTaxTotal,
        "cartDiscounts": cartDiscounts.toJson(),
        "cartVolumeDiscount": cartVolumeDiscount,
        "cartRewardPoints": cartRewardPoints,
        "cartWalletSelected": cartWalletSelected,
        "siteCommission": siteCommission,
        "orderNetAmount": orderNetAmount,
        "WalletAmountCharge": walletAmountCharge,
        "isCodEnabled": isCodEnabled,
        "isCodValidForNetAmt": isCodValidForNetAmt,
        "orderPaymentGatewayCharges": orderPaymentGatewayCharges,
        "netChargeAmount": netChargeAmount,
        "taxOptions": List<dynamic>.from(taxOptions.map((x) => x)),
        "prodTaxOptions": List<dynamic>.from(prodTaxOptions.map((x) => x)),
        "roundingOff": roundingOff,
      };
}

class NetPayable {
  NetPayable({
    this.key,
    this.value,
  });

  String key;
  String value;

  factory NetPayable.fromJson(Map<String, dynamic> json) => NetPayable(
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
      };
}

class Products {
  Products({
    this.notAvailable,
    this.available,
    this.saveForLater,
  });

  List<NotAvailable> notAvailable;
  List<Available> available;
  List<dynamic> saveForLater;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        notAvailable: List<NotAvailable>.from(
            json["notAvailable"].map((x) => NotAvailable.fromJson(x))),
        available: List<Available>.from(
            json["available"].map((x) => Available.fromJson(x))),
        saveForLater: List<dynamic>.from(json["saveForLater"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "notAvailable": List<dynamic>.from(notAvailable.map((x) => x.toJson())),
        "available": List<dynamic>.from(available.map((x) => x.toJson())),
        "saveForLater": List<dynamic>.from(saveForLater.map((x) => x)),
      };
}

class Available {
  Available({
    this.productId,
    this.productType,
    this.productLength,
    this.productWidth,
    this.productHeight,
    this.productShipFree,
    this.productDimensionUnit,
    this.productWeight,
    this.productWeightUnit,
    this.productFulfillmentType,
    this.selprodId,
    this.selprodCode,
    this.selprodStock,
    this.selprodUserId,
    this.inStock,
    this.selprodMinOrderQty,
    this.specialPriceFound,
    this.theprice,
    this.shopId,
    this.shopFreeShipUpto,
    this.splpriceDisplayListPrice,
    this.splpriceDisplayDisVal,
    this.splpriceDisplayDisType,
    this.selprodPrice,
    this.selprodCost,
    this.psbsUserId,
    this.productSellerId,
    this.productCodEnabled,
    this.shopFulfillmentType,
    this.selprodFulfillmentType,
    this.selprodCodEnabled,
    this.shippackLength,
    this.shippackWidth,
    this.shippackHeight,
    this.shippackUnits,
    this.productName,
    this.selprodTitle,
    this.brandName,
    this.shopName,
    this.brandId,
    this.isInAnyWishlist,
    this.uwlpUwlistId,
    this.actualPrice,
    this.volumeDiscount,
    this.volumeDiscountPercentage,
    this.volumeDiscountTotal,
    this.shippingCost,
    this.opshippingRateId,
    this.commissionPercentage,
    this.commission,
    this.roundingOff,
    this.tax,
    this.optionsTaxSum,
    this.taxCode,
    this.total,
    this.netTotal,
    this.isDigitalProduct,
    this.isPhysicalProduct,
    this.options,
    this.isProductShippedBySeller,
    this.fulfillmentType,
    this.shippingAddress,
    this.taxOptions,
    this.key,
    this.isBatch,
    this.isCodEnabled,
    this.quantity,
    this.hasPhysicalProduct,
    this.hasDigitalProduct,
    this.affiliateCommissionPercentage,
    this.affiliateCommission,
    this.affiliateUserId,
    this.sellerAddress,
    this.productUrl,
    this.shopUrl,
    this.imageUrl,
  });

  String productId;
  String productType;
  String productLength;
  String productWidth;
  String productHeight;
  String productShipFree;
  String productDimensionUnit;
  String productWeight;
  String productWeightUnit;
  String productFulfillmentType;
  String selprodId;
  String selprodCode;
  String selprodStock;
  String selprodUserId;
  String inStock;
  String selprodMinOrderQty;
  String specialPriceFound;
  String theprice;
  String shopId;
  String shopFreeShipUpto;
  String splpriceDisplayListPrice;
  String splpriceDisplayDisVal;
  String splpriceDisplayDisType;
  String selprodPrice;
  String selprodCost;
  String psbsUserId;
  String productSellerId;
  String productCodEnabled;
  String shopFulfillmentType;
  String selprodFulfillmentType;
  String selprodCodEnabled;
  String shippackLength;
  String shippackWidth;
  String shippackHeight;
  String shippackUnits;
  String productName;
  String selprodTitle;
  String brandName;
  String shopName;
  String brandId;
  String isInAnyWishlist;
  String uwlpUwlistId;
  String actualPrice;
  String volumeDiscount;
  String volumeDiscountPercentage;
  String volumeDiscountTotal;
  String shippingCost;
  String opshippingRateId;
  String commissionPercentage;
  String commission;
  String roundingOff;
  String tax;
  String optionsTaxSum;
  String taxCode;
  String total;
  String netTotal;
  String isDigitalProduct;
  String isPhysicalProduct;
  List<dynamic> options;
  String isProductShippedBySeller;
  String fulfillmentType;
  List<ShippingAddress> shippingAddress;
  List<dynamic> taxOptions;
  String key;
  String isBatch;
  String isCodEnabled;
  String quantity;
  String hasPhysicalProduct;
  String hasDigitalProduct;
  String affiliateCommissionPercentage;
  String affiliateCommission;
  String affiliateUserId;
  Map<String, String> sellerAddress;
  String productUrl;
  String shopUrl;
  String imageUrl;

  factory Available.fromJson(Map<String, dynamic> json) => Available(
        productId: json["product_id"],
        productType: json["product_type"],
        productLength: json["product_length"],
        productWidth: json["product_width"],
        productHeight: json["product_height"],
        productShipFree: json["product_ship_free"],
        productDimensionUnit: json["product_dimension_unit"],
        productWeight: json["product_weight"],
        productWeightUnit: json["product_weight_unit"],
        productFulfillmentType: json["product_fulfillment_type"],
        selprodId: json["selprod_id"],
        selprodCode: json["selprod_code"],
        selprodStock: json["selprod_stock"],
        selprodUserId: json["selprod_user_id"],
        inStock: json["in_stock"],
        selprodMinOrderQty: json["selprod_min_order_qty"],
        specialPriceFound: json["special_price_found"],
        theprice: json["theprice"],
        shopId: json["shop_id"],
        shopFreeShipUpto: json["shop_free_ship_upto"],
        splpriceDisplayListPrice: json["splprice_display_list_price"],
        splpriceDisplayDisVal: json["splprice_display_dis_val"],
        splpriceDisplayDisType: json["splprice_display_dis_type"],
        selprodPrice: json["selprod_price"],
        selprodCost: json["selprod_cost"],
        psbsUserId: json["psbs_user_id"],
        productSellerId: json["product_seller_id"],
        productCodEnabled: json["product_cod_enabled"],
        shopFulfillmentType: json["shop_fulfillment_type"],
        selprodFulfillmentType: json["selprod_fulfillment_type"],
        selprodCodEnabled: json["selprod_cod_enabled"],
        shippackLength: json["shippack_length"],
        shippackWidth: json["shippack_width"],
        shippackHeight: json["shippack_height"],
        shippackUnits: json["shippack_units"],
        productName: json["product_name"],
        selprodTitle: json["selprod_title"],
        brandName: json["brand_name"],
        shopName: json["shop_name"],
        brandId: json["brand_id"],
        isInAnyWishlist: json["is_in_any_wishlist"],
        uwlpUwlistId: json["uwlp_uwlist_id"],
        actualPrice: json["actualPrice"],
        volumeDiscount: json["volume_discount"],
        volumeDiscountPercentage: json["volume_discount_percentage"],
        volumeDiscountTotal: json["volume_discount_total"],
        shippingCost: json["shipping_cost"],
        opshippingRateId: json["opshipping_rate_id"],
        commissionPercentage: json["commission_percentage"],
        commission: json["commission"],
        roundingOff: json["rounding_off"],
        tax: json["tax"],
        optionsTaxSum: json["optionsTaxSum"],
        taxCode: json["taxCode"],
        total: json["total"],
        netTotal: json["netTotal"],
        isDigitalProduct: json["is_digital_product"],
        isPhysicalProduct: json["is_physical_product"],
        options: List<dynamic>.from(json["options"].map((x) => x)),
        isProductShippedBySeller: json["isProductShippedBySeller"],
        fulfillmentType: json["fulfillment_type"],
        shippingAddress: List<ShippingAddress>.from(
            json["shipping_address"].map((x) => ShippingAddress.fromJson(x))),
        taxOptions: List<dynamic>.from(json["taxOptions"].map((x) => x)),
        key: json["key"],
        isBatch: json["is_batch"],
        isCodEnabled: json["is_cod_enabled"],
        quantity: json["quantity"],
        hasPhysicalProduct: json["has_physical_product"],
        hasDigitalProduct: json["has_digital_product"],
        affiliateCommissionPercentage: json["affiliate_commission_percentage"],
        affiliateCommission: json["affiliate_commission"],
        affiliateUserId: json["affiliate_user_id"],
        sellerAddress: Map.from(json["seller_address"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        productUrl: json["productUrl"],
        shopUrl: json["shopUrl"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_type": productType,
        "product_length": productLength,
        "product_width": productWidth,
        "product_height": productHeight,
        "product_ship_free": productShipFree,
        "product_dimension_unit": productDimensionUnit,
        "product_weight": productWeight,
        "product_weight_unit": productWeightUnit,
        "product_fulfillment_type": productFulfillmentType,
        "selprod_id": selprodId,
        "selprod_code": selprodCode,
        "selprod_stock": selprodStock,
        "selprod_user_id": selprodUserId,
        "in_stock": inStock,
        "selprod_min_order_qty": selprodMinOrderQty,
        "special_price_found": specialPriceFound,
        "theprice": theprice,
        "shop_id": shopId,
        "shop_free_ship_upto": shopFreeShipUpto,
        "splprice_display_list_price": splpriceDisplayListPrice,
        "splprice_display_dis_val": splpriceDisplayDisVal,
        "splprice_display_dis_type": splpriceDisplayDisType,
        "selprod_price": selprodPrice,
        "selprod_cost": selprodCost,
        "psbs_user_id": psbsUserId,
        "product_seller_id": productSellerId,
        "product_cod_enabled": productCodEnabled,
        "shop_fulfillment_type": shopFulfillmentType,
        "selprod_fulfillment_type": selprodFulfillmentType,
        "selprod_cod_enabled": selprodCodEnabled,
        "shippack_length": shippackLength,
        "shippack_width": shippackWidth,
        "shippack_height": shippackHeight,
        "shippack_units": shippackUnits,
        "product_name": productName,
        "selprod_title": selprodTitle,
        "brand_name": brandName,
        "shop_name": shopName,
        "brand_id": brandId,
        "is_in_any_wishlist": isInAnyWishlist,
        "uwlp_uwlist_id": uwlpUwlistId,
        "actualPrice": actualPrice,
        "volume_discount": volumeDiscount,
        "volume_discount_percentage": volumeDiscountPercentage,
        "volume_discount_total": volumeDiscountTotal,
        "shipping_cost": shippingCost,
        "opshipping_rate_id": opshippingRateId,
        "commission_percentage": commissionPercentage,
        "commission": commission,
        "rounding_off": roundingOff,
        "tax": tax,
        "optionsTaxSum": optionsTaxSum,
        "taxCode": taxCode,
        "total": total,
        "netTotal": netTotal,
        "is_digital_product": isDigitalProduct,
        "is_physical_product": isPhysicalProduct,
        "options": List<dynamic>.from(options.map((x) => x)),
        "isProductShippedBySeller": isProductShippedBySeller,
        "fulfillment_type": fulfillmentType,
        "shipping_address":
            List<dynamic>.from(shippingAddress.map((x) => x.toJson())),
        "taxOptions": List<dynamic>.from(taxOptions.map((x) => x)),
        "key": key,
        "is_batch": isBatch,
        "is_cod_enabled": isCodEnabled,
        "quantity": quantity,
        "has_physical_product": hasPhysicalProduct,
        "has_digital_product": hasDigitalProduct,
        "affiliate_commission_percentage": affiliateCommissionPercentage,
        "affiliate_commission": affiliateCommission,
        "affiliate_user_id": affiliateUserId,
        "seller_address": Map.from(sellerAddress)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "productUrl": productUrl,
        "shopUrl": shopUrl,
        "imageUrl": imageUrl,
      };
}

class ShippingAddress {
  ShippingAddress({
    this.addrId,
    this.addrType,
    this.addrRecordId,
    this.addrAddedBy,
    this.addrLangId,
    this.addrTitle,
    this.addrName,
    this.addrAddress1,
    this.addrAddress2,
    this.addrCity,
    this.addrStateId,
    this.addrCountryId,
    this.addrPhoneDcode,
    this.addrPhone,
    this.addrZip,
    this.addrLat,
    this.addrLng,
    this.addrIsDefault,
    this.addrDeleted,
    this.addrUpdatedOn,
    this.stateCode,
    this.countryCode,
    this.countryCodeAlpha3,
    this.countryName,
    this.stateName,
  });

  String addrId;
  String addrType;
  String addrRecordId;
  String addrAddedBy;
  String addrLangId;
  String addrTitle;
  String addrName;
  String addrAddress1;
  String addrAddress2;
  String addrCity;
  String addrStateId;
  String addrCountryId;
  String addrPhoneDcode;
  String addrPhone;
  String addrZip;
  String addrLat;
  String addrLng;
  String addrIsDefault;
  String addrDeleted;
  DateTime addrUpdatedOn;
  String stateCode;
  String countryCode;
  String countryCodeAlpha3;
  String countryName;
  String stateName;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      ShippingAddress(
        addrId: json["addr_id"],
        addrType: json["addr_type"],
        addrRecordId: json["addr_record_id"],
        addrAddedBy: json["addr_added_by"],
        addrLangId: json["addr_lang_id"],
        addrTitle: json["addr_title"],
        addrName: json["addr_name"],
        addrAddress1: json["addr_address1"],
        addrAddress2: json["addr_address2"],
        addrCity: json["addr_city"],
        addrStateId: json["addr_state_id"],
        addrCountryId: json["addr_country_id"],
        addrPhoneDcode: json["addr_phone_dcode"],
        addrPhone: json["addr_phone"],
        addrZip: json["addr_zip"],
        addrLat: json["addr_lat"],
        addrLng: json["addr_lng"],
        addrIsDefault: json["addr_is_default"],
        addrDeleted: json["addr_deleted"],
        addrUpdatedOn: DateTime.parse(json["addr_updated_on"]),
        stateCode: json["state_code"],
        countryCode: json["country_code"],
        countryCodeAlpha3: json["country_code_alpha3"],
        countryName: json["country_name"],
        stateName: json["state_name"],
      );

  Map<String, dynamic> toJson() => {
        "addr_id": addrId,
        "addr_type": addrType,
        "addr_record_id": addrRecordId,
        "addr_added_by": addrAddedBy,
        "addr_lang_id": addrLangId,
        "addr_title": addrTitle,
        "addr_name": addrName,
        "addr_address1": addrAddress1,
        "addr_address2": addrAddress2,
        "addr_city": addrCity,
        "addr_state_id": addrStateId,
        "addr_country_id": addrCountryId,
        "addr_phone_dcode": addrPhoneDcode,
        "addr_phone": addrPhone,
        "addr_zip": addrZip,
        "addr_lat": addrLat,
        "addr_lng": addrLng,
        "addr_is_default": addrIsDefault,
        "addr_deleted": addrDeleted,
        "addr_updated_on": addrUpdatedOn.toIso8601String(),
        "state_code": stateCode,
        "country_code": countryCode,
        "country_code_alpha3": countryCodeAlpha3,
        "country_name": countryName,
        "state_name": stateName,
      };
}

class NotAvailable {
  NotAvailable({
    this.productId,
    this.productType,
    this.productLength,
    this.productWidth,
    this.productHeight,
    this.productShipFree,
    this.productDimensionUnit,
    this.productWeight,
    this.productWeightUnit,
    this.productFulfillmentType,
    this.selprodId,
    this.selprodCode,
    this.selprodStock,
    this.selprodUserId,
    this.inStock,
    this.selprodMinOrderQty,
    this.specialPriceFound,
    this.theprice,
    this.shopId,
    this.shopFreeShipUpto,
    this.splpriceDisplayListPrice,
    this.splpriceDisplayDisVal,
    this.splpriceDisplayDisType,
    this.selprodPrice,
    this.selprodCost,
    this.psbsUserId,
    this.productSellerId,
    this.productCodEnabled,
    this.shopFulfillmentType,
    this.selprodFulfillmentType,
    this.selprodCodEnabled,
    this.shippackLength,
    this.shippackWidth,
    this.shippackHeight,
    this.shippackUnits,
    this.productName,
    this.selprodTitle,
    this.brandName,
    this.shopName,
    this.brandId,
    this.isInAnyWishlist,
    this.uwlpUwlistId,
    this.actualPrice,
    this.volumeDiscount,
    this.volumeDiscountPercentage,
    this.volumeDiscountTotal,
    this.shippingCost,
    this.opshippingRateId,
    this.commissionPercentage,
    this.commission,
    this.roundingOff,
    this.tax,
    this.optionsTaxSum,
    this.taxCode,
    this.total,
    this.netTotal,
    this.isDigitalProduct,
    this.isPhysicalProduct,
    this.options,
    this.isProductShippedBySeller,
    this.fulfillmentType,
    this.shippingAddress,
    this.taxOptions,
    this.key,
    this.isBatch,
    this.isCodEnabled,
    this.quantity,
    this.hasPhysicalProduct,
    this.hasDigitalProduct,
    this.affiliateCommissionPercentage,
    this.affiliateCommission,
    this.affiliateUserId,
    this.sellerAddress,
    this.productUrl,
    this.shopUrl,
    this.imageUrl,
  });

  String productId;
  String productType;
  String productLength;
  String productWidth;
  String productHeight;
  String productShipFree;
  String productDimensionUnit;
  String productWeight;
  String productWeightUnit;
  String productFulfillmentType;
  String selprodId;
  String selprodCode;
  String selprodStock;
  String selprodUserId;
  String inStock;
  String selprodMinOrderQty;
  String specialPriceFound;
  String theprice;
  String shopId;
  String shopFreeShipUpto;
  String splpriceDisplayListPrice;
  String splpriceDisplayDisVal;
  String splpriceDisplayDisType;
  String selprodPrice;
  String selprodCost;
  String psbsUserId;
  String productSellerId;
  String productCodEnabled;
  String shopFulfillmentType;
  String selprodFulfillmentType;
  String selprodCodEnabled;
  String shippackLength;
  String shippackWidth;
  String shippackHeight;
  String shippackUnits;
  String productName;
  String selprodTitle;
  String brandName;
  String shopName;
  String brandId;
  String isInAnyWishlist;
  String uwlpUwlistId;
  String actualPrice;
  String volumeDiscount;
  String volumeDiscountPercentage;
  String volumeDiscountTotal;
  String shippingCost;
  String opshippingRateId;
  String commissionPercentage;
  String commission;
  String roundingOff;
  String tax;
  String optionsTaxSum;
  String taxCode;
  String total;
  String netTotal;
  String isDigitalProduct;
  String isPhysicalProduct;
  List<dynamic> options;
  String isProductShippedBySeller;
  String fulfillmentType;
  List<ShippingAddress> shippingAddress;
  TaxOptions taxOptions;
  String key;
  String isBatch;
  String isCodEnabled;
  String quantity;
  String hasPhysicalProduct;
  String hasDigitalProduct;
  String affiliateCommissionPercentage;
  String affiliateCommission;
  String affiliateUserId;
  Map<String, String> sellerAddress;
  String productUrl;
  String shopUrl;
  String imageUrl;

  factory NotAvailable.fromJson(Map<String, dynamic> json) => NotAvailable(
        productId: json["product_id"],
        productType: json["product_type"],
        productLength: json["product_length"],
        productWidth: json["product_width"],
        productHeight: json["product_height"],
        productShipFree: json["product_ship_free"],
        productDimensionUnit: json["product_dimension_unit"],
        productWeight: json["product_weight"],
        productWeightUnit: json["product_weight_unit"],
        productFulfillmentType: json["product_fulfillment_type"],
        selprodId: json["selprod_id"],
        selprodCode: json["selprod_code"],
        selprodStock: json["selprod_stock"],
        selprodUserId: json["selprod_user_id"],
        inStock: json["in_stock"],
        selprodMinOrderQty: json["selprod_min_order_qty"],
        specialPriceFound: json["special_price_found"],
        theprice: json["theprice"],
        shopId: json["shop_id"],
        shopFreeShipUpto: json["shop_free_ship_upto"],
        splpriceDisplayListPrice: json["splprice_display_list_price"],
        splpriceDisplayDisVal: json["splprice_display_dis_val"],
        splpriceDisplayDisType: json["splprice_display_dis_type"],
        selprodPrice: json["selprod_price"],
        selprodCost: json["selprod_cost"],
        psbsUserId: json["psbs_user_id"],
        productSellerId: json["product_seller_id"],
        productCodEnabled: json["product_cod_enabled"],
        shopFulfillmentType: json["shop_fulfillment_type"],
        selprodFulfillmentType: json["selprod_fulfillment_type"],
        selprodCodEnabled: json["selprod_cod_enabled"],
        shippackLength: json["shippack_length"],
        shippackWidth: json["shippack_width"],
        shippackHeight: json["shippack_height"],
        shippackUnits: json["shippack_units"],
        productName: json["product_name"],
        selprodTitle: json["selprod_title"],
        brandName: json["brand_name"],
        shopName: json["shop_name"],
        brandId: json["brand_id"],
        isInAnyWishlist: json["is_in_any_wishlist"],
        uwlpUwlistId: json["uwlp_uwlist_id"],
        actualPrice: json["actualPrice"],
        volumeDiscount: json["volume_discount"],
        volumeDiscountPercentage: json["volume_discount_percentage"],
        volumeDiscountTotal: json["volume_discount_total"],
        shippingCost: json["shipping_cost"],
        opshippingRateId: json["opshipping_rate_id"],
        commissionPercentage: json["commission_percentage"],
        commission: json["commission"],
        roundingOff: json["rounding_off"],
        tax: json["tax"],
        optionsTaxSum: json["optionsTaxSum"],
        taxCode: json["taxCode"],
        total: json["total"],
        netTotal: json["netTotal"],
        isDigitalProduct: json["is_digital_product"],
        isPhysicalProduct: json["is_physical_product"],
        options: List<dynamic>.from(json["options"].map((x) => x)),
        isProductShippedBySeller: json["isProductShippedBySeller"],
        fulfillmentType: json["fulfillment_type"],
        shippingAddress: List<ShippingAddress>.from(
            json["shipping_address"].map((x) => ShippingAddress.fromJson(x))),
        taxOptions: TaxOptions.fromJson(json["taxOptions"]),
        key: json["key"],
        isBatch: json["is_batch"],
        isCodEnabled: json["is_cod_enabled"],
        quantity: json["quantity"],
        hasPhysicalProduct: json["has_physical_product"],
        hasDigitalProduct: json["has_digital_product"],
        affiliateCommissionPercentage: json["affiliate_commission_percentage"],
        affiliateCommission: json["affiliate_commission"],
        affiliateUserId: json["affiliate_user_id"],
        sellerAddress: Map.from(json["seller_address"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        productUrl: json["productUrl"],
        shopUrl: json["shopUrl"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_type": productType,
        "product_length": productLength,
        "product_width": productWidth,
        "product_height": productHeight,
        "product_ship_free": productShipFree,
        "product_dimension_unit": productDimensionUnit,
        "product_weight": productWeight,
        "product_weight_unit": productWeightUnit,
        "product_fulfillment_type": productFulfillmentType,
        "selprod_id": selprodId,
        "selprod_code": selprodCode,
        "selprod_stock": selprodStock,
        "selprod_user_id": selprodUserId,
        "in_stock": inStock,
        "selprod_min_order_qty": selprodMinOrderQty,
        "special_price_found": specialPriceFound,
        "theprice": theprice,
        "shop_id": shopId,
        "shop_free_ship_upto": shopFreeShipUpto,
        "splprice_display_list_price": splpriceDisplayListPrice,
        "splprice_display_dis_val": splpriceDisplayDisVal,
        "splprice_display_dis_type": splpriceDisplayDisType,
        "selprod_price": selprodPrice,
        "selprod_cost": selprodCost,
        "psbs_user_id": psbsUserId,
        "product_seller_id": productSellerId,
        "product_cod_enabled": productCodEnabled,
        "shop_fulfillment_type": shopFulfillmentType,
        "selprod_fulfillment_type": selprodFulfillmentType,
        "selprod_cod_enabled": selprodCodEnabled,
        "shippack_length": shippackLength,
        "shippack_width": shippackWidth,
        "shippack_height": shippackHeight,
        "shippack_units": shippackUnits,
        "product_name": productName,
        "selprod_title": selprodTitle,
        "brand_name": brandName,
        "shop_name": shopName,
        "brand_id": brandId,
        "is_in_any_wishlist": isInAnyWishlist,
        "uwlp_uwlist_id": uwlpUwlistId,
        "actualPrice": actualPrice,
        "volume_discount": volumeDiscount,
        "volume_discount_percentage": volumeDiscountPercentage,
        "volume_discount_total": volumeDiscountTotal,
        "shipping_cost": shippingCost,
        "opshipping_rate_id": opshippingRateId,
        "commission_percentage": commissionPercentage,
        "commission": commission,
        "rounding_off": roundingOff,
        "tax": tax,
        "optionsTaxSum": optionsTaxSum,
        "taxCode": taxCode,
        "total": total,
        "netTotal": netTotal,
        "is_digital_product": isDigitalProduct,
        "is_physical_product": isPhysicalProduct,
        "options": List<dynamic>.from(options.map((x) => x)),
        "isProductShippedBySeller": isProductShippedBySeller,
        "fulfillment_type": fulfillmentType,
        "shipping_address":
            List<dynamic>.from(shippingAddress.map((x) => x.toJson())),
        "taxOptions": taxOptions.toJson(),
        "key": key,
        "is_batch": isBatch,
        "is_cod_enabled": isCodEnabled,
        "quantity": quantity,
        "has_physical_product": hasPhysicalProduct,
        "has_digital_product": hasDigitalProduct,
        "affiliate_commission_percentage": affiliateCommissionPercentage,
        "affiliate_commission": affiliateCommission,
        "affiliate_user_id": affiliateUserId,
        "seller_address": Map.from(sellerAddress)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "productUrl": productUrl,
        "shopUrl": shopUrl,
        "imageUrl": imageUrl,
      };
}

class TaxOptions {
  TaxOptions({
    this.vat,
  });

  String vat;

  factory TaxOptions.fromJson(Map<String, dynamic> json) => TaxOptions(
        vat: json["VAT"],
      );

  Map<String, dynamic> toJson() => {
        "VAT": vat,
      };
}

class AddToCart {
  final String selprod_id;
  final String quantity;
  final String addons;
  final String uwlist_id;
  final String ufp_id;

  AddToCart({
    this.selprod_id,
    this.addons,
    this.quantity,
    this.ufp_id,
    this.uwlist_id,
  });

  factory AddToCart.fromJson(Map<String, dynamic> json) => AddToCart(
        selprod_id: json["selprod_id"],
        addons: json["addons"],
        quantity: json["quantity"],
        ufp_id: json["ufp_id"],
        uwlist_id: json["uwlist_id"],
      );

  Map<String, dynamic> toJson() => {
        "selprod_id": selprod_id,
        "quantity": quantity,
        "addons": addons,
        "ufp_id": ufp_id,
        "uwlist_id": uwlist_id,
      };
}

class RemoveFromCart {
  final String key;
  final String fulfilmentType;

  RemoveFromCart({this.key, this.fulfilmentType});

  factory RemoveFromCart.fromJson(Map<String, dynamic> json) => RemoveFromCart(
        key: json["key"],
        fulfilmentType: json["fulfilmentType"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "fulfilmentType": fulfilmentType,
      };
}
