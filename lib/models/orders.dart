import 'dart:convert';

OrderListing orderListingFromJson(String str) =>
    OrderListing.fromJson(json.decode(str));

String orderListingToJson(OrderListing data) => json.encode(data.toJson());

class OrderListing {
  OrderListing({
    this.status,
    this.msg,
    this.data,
  });

  String status;
  String msg;
  OrderListingData data;

  factory OrderListing.fromJson(Map<String, dynamic> json) => OrderListing(
        status: json["status"],
        msg: json["msg"],
        data: OrderListingData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}

class OrderListingData {
  OrderListingData({
    this.currencySymbol,
    this.totalFavouriteItems,
    this.totalUnreadMessageCount,
    this.totalUnreadNotificationCount,
    this.cartItemsCount,
    this.orders,
    this.page,
    this.pageCount,
    this.recordCount,
    this.orderStatuses,
  });

  String currencySymbol;
  String totalFavouriteItems;
  String totalUnreadMessageCount;
  String totalUnreadNotificationCount;
  String cartItemsCount;
  List<Order> orders;
  String page;
  String pageCount;
  String recordCount;
  List<OrderStatus> orderStatuses;

  factory OrderListingData.fromJson(Map<String, dynamic> json) =>
      OrderListingData(
        currencySymbol: json["currencySymbol"],
        totalFavouriteItems: json["totalFavouriteItems"],
        totalUnreadMessageCount: json["totalUnreadMessageCount"],
        totalUnreadNotificationCount: json["totalUnreadNotificationCount"],
        cartItemsCount: json["cartItemsCount"],
        orders: List<Order>.from(json["orders"].map((x) => Order.fromJson(x))),
        page: json["page"],
        pageCount: json["pageCount"],
        recordCount: json["recordCount"],
        orderStatuses: List<OrderStatus>.from(
            json["orderStatuses"].map((x) => OrderStatus.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "currencySymbol": currencySymbol,
        "totalFavouriteItems": totalFavouriteItems,
        "totalUnreadMessageCount": totalUnreadMessageCount,
        "totalUnreadNotificationCount": totalUnreadNotificationCount,
        "cartItemsCount": cartItemsCount,
        "orders": List<dynamic>.from(orders.map((x) => x.toJson())),
        "page": page,
        "pageCount": pageCount,
        "recordCount": recordCount,
        "orderStatuses":
            List<dynamic>.from(orderStatuses.map((x) => x.toJson())),
      };
}

class OrderStatus {
  OrderStatus({
    this.orderstatusId,
    this.orderstatusName,
  });

  String orderstatusId;
  String orderstatusName;

  factory OrderStatus.fromJson(Map<String, dynamic> json) => OrderStatus(
        orderstatusId: json["orderstatus_id"],
        orderstatusName: json["orderstatus_name"],
      );

  Map<String, dynamic> toJson() => {
        "orderstatus_id": orderstatusId,
        "orderstatus_name": orderstatusName,
      };
}

class Order {
  Order({
    this.selprodProductId,
    this.orderId,
    this.orderUserId,
    this.orderDateAdded,
    this.orderNetAmount,
    this.opInvoiceNumber,
    this.totOrders,
    this.opSelprodId,
    this.opSelprodTitle,
    this.opProductName,
    this.opId,
    this.opOtherCharges,
    this.opUnitPrice,
    this.opQty,
    this.opSelprodOptions,
    this.opBrandName,
    this.opShopName,
    this.opStatusId,
    this.opProductType,
    this.orderstatusName,
    this.orderstatusColorClass,
    this.orderPmethodId,
    this.orderStatus,
    this.pluginName,
    this.returnRequest,
    this.cancelRequest,
    this.returnAge,
    this.cancellationAge,
    this.orderPaymentStatus,
    this.orderDeleted,
    this.pluginCode,
    this.opshippingFulfillmentType,
    this.opRoundingOff,
    this.charges,
    this.orderstatusColorCode,
    this.productImageUrl,
  });

  String selprodProductId;
  String orderId;
  String orderUserId;
  DateTime orderDateAdded;
  String orderNetAmount;
  String opInvoiceNumber;
  String totOrders;
  String opSelprodId;
  String opSelprodTitle;
  String opProductName;
  String opId;
  String opOtherCharges;
  String opUnitPrice;
  String opQty;
  String opSelprodOptions;
  String opBrandName;
  String opShopName;
  String opStatusId;
  String opProductType;
  String orderstatusName;
  String orderstatusColorClass;
  String orderPmethodId;
  String orderStatus;
  String pluginName;
  String returnRequest;
  String cancelRequest;
  String returnAge;
  String cancellationAge;
  String orderPaymentStatus;
  String orderDeleted;
  String pluginCode;
  String opshippingFulfillmentType;
  String opRoundingOff;
  List<dynamic> charges;
  String orderstatusColorCode;
  String productImageUrl;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        selprodProductId: json["selprod_product_id"],
        orderId: json["order_id"],
        orderUserId: json["order_user_id"],
        orderDateAdded: DateTime.parse(json["order_date_added"]),
        orderNetAmount: json["order_net_amount"],
        opInvoiceNumber: json["op_invoice_number"],
        totOrders: json["totOrders"],
        opSelprodId: json["op_selprod_id"],
        opSelprodTitle: json["op_selprod_title"],
        opProductName: json["op_product_name"],
        opId: json["op_id"],
        opOtherCharges: json["op_other_charges"],
        opUnitPrice: json["op_unit_price"],
        opQty: json["op_qty"],
        opSelprodOptions: json["op_selprod_options"],
        opBrandName: json["op_brand_name"],
        opShopName: json["op_shop_name"],
        opStatusId: json["op_status_id"],
        opProductType: json["op_product_type"],
        orderstatusName: json["orderstatus_name"],
        orderstatusColorClass: json["orderstatus_color_class"],
        orderPmethodId: json["order_pmethod_id"],
        orderStatus: json["order_status"],
        pluginName: json["plugin_name"],
        returnRequest: json["return_request"],
        cancelRequest: json["cancel_request"],
        returnAge: json["return_age"],
        cancellationAge: json["cancellation_age"],
        orderPaymentStatus: json["order_payment_status"],
        orderDeleted: json["order_deleted"],
        pluginCode: json["plugin_code"],
        opshippingFulfillmentType: json["opshipping_fulfillment_type"],
        opRoundingOff: json["op_rounding_off"],
        charges: List<dynamic>.from(json["charges"].map((x) => x)),
        orderstatusColorCode: json["orderstatus_color_code"],
        productImageUrl: json["product_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "selprod_product_id": selprodProductId,
        "order_id": orderId,
        "order_user_id": orderUserId,
        "order_date_added": orderDateAdded.toIso8601String(),
        "order_net_amount": orderNetAmount,
        "op_invoice_number": opInvoiceNumber,
        "totOrders": totOrders,
        "op_selprod_id": opSelprodId,
        "op_selprod_title": opSelprodTitle,
        "op_product_name": opProductName,
        "op_id": opId,
        "op_other_charges": opOtherCharges,
        "op_unit_price": opUnitPrice,
        "op_qty": opQty,
        "op_selprod_options": opSelprodOptions,
        "op_brand_name": opBrandName,
        "op_shop_name": opShopName,
        "op_status_id": opStatusId,
        "op_product_type": opProductType,
        "orderstatus_name": orderstatusName,
        "orderstatus_color_class": orderstatusColorClass,
        "order_pmethod_id": orderPmethodId,
        "order_status": orderStatus,
        "plugin_name": pluginName,
        "return_request": returnRequest,
        "cancel_request": cancelRequest,
        "return_age": returnAge,
        "cancellation_age": cancellationAge,
        "order_payment_status": orderPaymentStatus,
        "order_deleted": orderDeleted,
        "plugin_code": pluginCode,
        "opshipping_fulfillment_type": opshippingFulfillmentType,
        "op_rounding_off": opRoundingOff,
        "charges": List<dynamic>.from(charges.map((x) => x)),
        "orderstatus_color_code": orderstatusColorCode,
        "product_image_url": productImageUrl,
      };
}

OrderDetails orderDetailsFromJson(String str) =>
    OrderDetails.fromJson(json.decode(str));

String orderDetailsToJson(OrderDetails data) => json.encode(data.toJson());

class OrderDetails {
  OrderDetails({
    this.status,
    this.msg,
    this.data,
  });

  String status;
  String msg;
  OrderDetailsData data;

  factory OrderDetails.fromJson(Map<String, dynamic> json) => OrderDetails(
        status: json["status"],
        msg: json["msg"],
        data: OrderDetailsData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}

class OrderDetailsData {
  OrderDetailsData({
    this.currencySymbol,
    this.totalFavouriteItems,
    this.totalUnreadMessageCount,
    this.totalUnreadNotificationCount,
    this.cartItemsCount,
    this.orderDetail,
    this.childOrderDetail,
    this.orderStatuses,
    this.primaryOrder,
    this.digitalDownloads,
    this.digitalDownloadLinks,
    this.languages,
    this.yesNoArr,
    this.orderSummary,
  });

  String currencySymbol;
  String totalFavouriteItems;
  String totalUnreadMessageCount;
  String totalUnreadNotificationCount;
  String cartItemsCount;
  OrderDetail orderDetail;
  List<ChildOrderDetail> childOrderDetail;
  Map<String, String> orderStatuses;
  String primaryOrder;
  DigitalDownloadLinks digitalDownloads;
  DigitalDownloadLinks digitalDownloadLinks;
  Languages languages;
  Map<String, String> yesNoArr;
  List<OrderSummary> orderSummary;

  factory OrderDetailsData.fromJson(Map<String, dynamic> json) =>
      OrderDetailsData(
        currencySymbol: json["currencySymbol"],
        totalFavouriteItems: json["totalFavouriteItems"],
        totalUnreadMessageCount: json["totalUnreadMessageCount"],
        totalUnreadNotificationCount: json["totalUnreadNotificationCount"],
        cartItemsCount: json["cartItemsCount"],
        orderDetail: OrderDetail.fromJson(json["orderDetail"]),
        childOrderDetail: List<ChildOrderDetail>.from(
            json["childOrderDetail"].map((x) => ChildOrderDetail.fromJson(x))),
        orderStatuses: Map.from(json["orderStatuses"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        primaryOrder: json["primaryOrder"],
        digitalDownloads:
            DigitalDownloadLinks.fromJson(json["digitalDownloads"]),
        digitalDownloadLinks:
            DigitalDownloadLinks.fromJson(json["digitalDownloadLinks"]),
        languages: Languages.fromJson(json["languages"]),
        yesNoArr: Map.from(json["yesNoArr"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        orderSummary: List<OrderSummary>.from(
            json["orderSummary"].map((x) => OrderSummary.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "currencySymbol": currencySymbol,
        "totalFavouriteItems": totalFavouriteItems,
        "totalUnreadMessageCount": totalUnreadMessageCount,
        "totalUnreadNotificationCount": totalUnreadNotificationCount,
        "cartItemsCount": cartItemsCount,
        "orderDetail": orderDetail.toJson(),
        "childOrderDetail":
            List<dynamic>.from(childOrderDetail.map((x) => x.toJson())),
        "orderStatuses": Map.from(orderStatuses)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "primaryOrder": primaryOrder,
        "digitalDownloads": digitalDownloads.toJson(),
        "digitalDownloadLinks": digitalDownloadLinks.toJson(),
        "languages": languages.toJson(),
        "yesNoArr":
            Map.from(yesNoArr).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "orderSummary": List<dynamic>.from(orderSummary.map((x) => x.toJson())),
      };
}

class ChildOrderDetail {
  ChildOrderDetail({
    this.opId,
    this.opOrderId,
    this.opInvoiceNumber,
    this.opSelprodId,
    this.opIsBatch,
    this.opSelprodUserId,
    this.opSelprodCode,
    this.opBatchSelprodId,
    this.opQty,
    this.opUnitPrice,
    this.opUnitCost,
    this.opSelprodSku,
    this.opCommissionCharged,
    this.opCommissionPercentage,
    this.opAffiliateCommissionCharged,
    this.opAffiliateCommissionPercentage,
    this.opSelprodCondition,
    this.opProductModel,
    this.opProductType,
    this.opProductLength,
    this.opProductWidth,
    this.opProductHeight,
    this.opProductDimensionUnit,
    this.opProductWeight,
    this.opProductWeightUnit,
    this.opShopId,
    this.opShopOwnerName,
    this.opShopOwnerUsername,
    this.opShopOwnerEmail,
    this.opShopOwnerPhoneDcode,
    this.opShopOwnerPhone,
    this.opSdurationId,
    this.opStatusId,
    this.opRefundQty,
    this.opRefundAmount,
    this.opRefundCommission,
    this.opRefundShipping,
    this.opRefundAffiliateCommission,
    this.opShippedDate,
    this.opCompletionDate,
    this.opSentReviewReminder,
    this.opReviewReminderCount,
    this.opSentLastReminder,
    this.opSelprodMaxDownloadTimes,
    this.opSelprodDownloadValidityInDays,
    this.opFreeShipUpto,
    this.opActualShippingCharges,
    this.opTaxCode,
    this.opRoundingOff,
    this.oplangOpId,
    this.oplangLangId,
    this.oplangOrderId,
    this.opProductName,
    this.opSelprodTitle,
    this.opSelprodOptions,
    this.opBrandName,
    this.opShopName,
    this.opShippingDurationName,
    this.opShippingDurations,
    this.opProductsDimensionUnitName,
    this.opProductWeightUnitName,
    this.opProductTaxOptions,
    this.orderId,
    this.orderType,
    this.orderUserId,
    this.orderPaymentStatus,
    this.orderStatus,
    this.orderNetAmount,
    this.orderIsWalletSelected,
    this.orderWalletAmountCharge,
    this.orderTaxCharged,
    this.orderSiteCommission,
    this.orderDiscountCouponCode,
    this.orderDiscountType,
    this.orderDiscountValue,
    this.orderDiscountTotal,
    this.orderDiscountInfo,
    this.orderVolumeDiscountTotal,
    this.orderRewardPointUsed,
    this.orderRewardPointValue,
    this.orderUserComments,
    this.orderAdminComments,
    this.orderLanguageId,
    this.orderLanguageCode,
    this.orderCurrencyId,
    this.orderCurrencyCode,
    this.orderCurrencyValue,
    this.orderShippingapiId,
    this.orderShippingapiCode,
    this.orderPmethodId,
    this.orderDateAdded,
    this.orderDateUpdated,
    this.orderReferrerUserId,
    this.orderReferrerRewardPoints,
    this.orderReferralRewardPoints,
    this.orderAffiliateUserId,
    this.orderAffiliateTotalCommission,
    this.orderCartData,
    this.orderRenew,
    this.orderDeleted,
    this.orderRoundingOff,
    this.orderstatusId,
    this.orderstatusIdentifier,
    this.orderstatusColorClass,
    this.orderstatusType,
    this.orderstatusPriority,
    this.orderstatusIsActive,
    this.orderstatusIsDigital,
    this.orderstatuslangOrderstatusId,
    this.orderstatuslangLangId,
    this.orderstatusName,
    this.opsettingOpId,
    this.opCommissionIncludeTax,
    this.opCommissionIncludeShipping,
    this.opTaxCollectedBySeller,
    this.opshipOpId,
    this.opshipOrderid,
    this.opshipOrderNumber,
    this.opshipShipmentId,
    this.opshipTrackingNumber,
    this.opshipTrackingUrl,
    this.opshipResponse,
    this.pluginId,
    this.pluginIdentifier,
    this.pluginType,
    this.pluginCode,
    this.pluginActive,
    this.pluginDisplayOrder,
    this.pluginlangPluginId,
    this.pluginlangLangId,
    this.pluginName,
    this.pluginDescription,
    this.selprodId,
    this.selprodUserId,
    this.selprodProductId,
    this.selprodCode,
    this.selprodPrice,
    this.selprodCost,
    this.selprodStock,
    this.selprodMinOrderQty,
    this.selprodSubtractStock,
    this.selprodTrackInventory,
    this.selprodThresholdStockLevel,
    this.selprodSku,
    this.selprodCondition,
    this.selprodAddedOn,
    this.selprodUpdatedOn,
    this.selprodAvailableFrom,
    this.selprodComments,
    this.selprodActive,
    this.selprodCodEnabled,
    this.selprodFulfillmentType,
    this.selprodSoldCount,
    this.selprodUrlKeyword,
    this.selprodMaxDownloadTimes,
    this.selprodDownloadableLink,
    this.selprodDownloadValidityInDays,
    this.selprodUrlrewriteId,
    this.selprodDeleted,
    this.selprodlangSelprodId,
    this.selprodlangLangId,
    this.selprodTitle,
    this.selprodFeatures,
    this.selprodWarranty,
    this.selprodReturnPolicy,
    this.userId,
    this.userName,
    this.userPhoneDcode,
    this.userPhone,
    this.userDob,
    this.userProfileInfo,
    this.userAddress1,
    this.userAddress2,
    this.userZip,
    this.userCountryId,
    this.userStateId,
    this.userCity,
    this.userIsBuyer,
    this.userIsSupplier,
    this.userParent,
    this.userIsAdvertiser,
    this.userIsAffiliate,
    this.userIsShippingCompany,
    this.userAutorenewSubscription,
    this.userFbAccessToken,
    this.userReferralCode,
    this.userReferrerUserId,
    this.userAffiliateReferrerUserId,
    this.userPreferredDashboard,
    this.userRegdate,
    this.userCompany,
    this.userProductsServices,
    this.userAffiliateCommission,
    this.userRegisteredInitiallyFor,
    this.userOrderTrackingUrl,
    this.userUpdatedOn,
    this.userDeleted,
    this.credentialUserId,
    this.credentialUsername,
    this.credentialEmail,
    this.credentialPassword,
    this.credentialActive,
    this.credentialVerified,
    this.opchargeOpId,
    this.opOtherCharges,
    this.opshippingOpId,
    this.opshippingFulfillmentType,
    this.opshippingCode,
    this.opshippingRateId,
    this.opshippingBySellerUserId,
    this.opshippingLevel,
    this.opshippingLabel,
    this.opshippingCarrierCode,
    this.opshippingServiceCode,
    this.opshippingPickupAddrId,
    this.opshippingDate,
    this.opshippingTimeSlotFrom,
    this.opshippingTimeSlotTo,
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
    this.stateId,
    this.stateCode,
    this.stateCountryId,
    this.stateIdentifier,
    this.stateActive,
    this.stateUpdatedOn,
    this.statelangStateId,
    this.statelangLangId,
    this.stateName,
    this.countryId,
    this.countryCode,
    this.countryCodeAlpha3,
    this.countryActive,
    this.countryZoneId,
    this.countryCurrencyId,
    this.countryLanguageId,
    this.countryUpdatedOn,
    this.countrylangCountryId,
    this.countrylangLangId,
    this.countryName,
    this.orrequestId,
    this.orrequestUserId,
    this.orrequestReference,
    this.orrequestOpId,
    this.orrequestQty,
    this.orrequestReturnreasonId,
    this.orrequestType,
    this.orrequestDate,
    this.orrequestStatus,
    this.orrequestPaymentGatewayReqId,
    this.orrequestRefundInWallet,
    this.orrequestAdminComment,
    this.ocrequestId,
    this.ocrequestUserId,
    this.ocrequestOpId,
    this.ocrequestOcreasonId,
    this.ocrequestMessage,
    this.ocrequestDate,
    this.ocrequestStatus,
    this.ocrequestPaymentGatewayReqId,
    this.ocrequestRefundInWallet,
    this.ocrequestAdminComment,
    this.returnRequest,
    this.cancelRequest,
    this.charges,
    this.taxOptions,
    this.orderstatusColorCode,
    this.prodRating,
    this.reviewsAllowed,
    this.productImageUrl,
    this.canCancelOrder,
    this.canReturnOrder,
    this.canSubmitFeedback,
    this.priceDetail,
    this.totalAmount,
  });

  String opId;
  String opOrderId;
  String opInvoiceNumber;
  String opSelprodId;
  String opIsBatch;
  String opSelprodUserId;
  String opSelprodCode;
  String opBatchSelprodId;
  String opQty;
  String opUnitPrice;
  String opUnitCost;
  String opSelprodSku;
  String opCommissionCharged;
  String opCommissionPercentage;
  String opAffiliateCommissionCharged;
  String opAffiliateCommissionPercentage;
  String opSelprodCondition;
  String opProductModel;
  String opProductType;
  String opProductLength;
  String opProductWidth;
  String opProductHeight;
  String opProductDimensionUnit;
  String opProductWeight;
  String opProductWeightUnit;
  String opShopId;
  String opShopOwnerName;
  String opShopOwnerUsername;
  String opShopOwnerEmail;
  String opShopOwnerPhoneDcode;
  String opShopOwnerPhone;
  String opSdurationId;
  String opStatusId;
  String opRefundQty;
  String opRefundAmount;
  String opRefundCommission;
  String opRefundShipping;
  String opRefundAffiliateCommission;
  String opShippedDate;
  DateTime opCompletionDate;
  String opSentReviewReminder;
  String opReviewReminderCount;
  String opSentLastReminder;
  String opSelprodMaxDownloadTimes;
  String opSelprodDownloadValidityInDays;
  String opFreeShipUpto;
  String opActualShippingCharges;
  String opTaxCode;
  String opRoundingOff;
  String oplangOpId;
  String oplangLangId;
  String oplangOrderId;
  String opProductName;
  String opSelprodTitle;
  String opSelprodOptions;
  String opBrandName;
  String opShopName;
  String opShippingDurationName;
  String opShippingDurations;
  String opProductsDimensionUnitName;
  String opProductWeightUnitName;
  String opProductTaxOptions;
  String orderId;
  String orderType;
  String orderUserId;
  String orderPaymentStatus;
  String orderStatus;
  String orderNetAmount;
  String orderIsWalletSelected;
  String orderWalletAmountCharge;
  String orderTaxCharged;
  String orderSiteCommission;
  String orderDiscountCouponCode;
  String orderDiscountType;
  String orderDiscountValue;
  String orderDiscountTotal;
  String orderDiscountInfo;
  String orderVolumeDiscountTotal;
  String orderRewardPointUsed;
  String orderRewardPointValue;
  String orderUserComments;
  String orderAdminComments;
  String orderLanguageId;
  String orderLanguageCode;
  String orderCurrencyId;
  String orderCurrencyCode;
  String orderCurrencyValue;
  String orderShippingapiId;
  String orderShippingapiCode;
  String orderPmethodId;
  DateTime orderDateAdded;
  DateTime orderDateUpdated;
  String orderReferrerUserId;
  String orderReferrerRewardPoints;
  String orderReferralRewardPoints;
  String orderAffiliateUserId;
  String orderAffiliateTotalCommission;
  String orderCartData;
  String orderRenew;
  String orderDeleted;
  String orderRoundingOff;
  String orderstatusId;
  String orderstatusIdentifier;
  String orderstatusColorClass;
  String orderstatusType;
  String orderstatusPriority;
  String orderstatusIsActive;
  String orderstatusIsDigital;
  String orderstatuslangOrderstatusId;
  String orderstatuslangLangId;
  String orderstatusName;
  String opsettingOpId;
  String opCommissionIncludeTax;
  String opCommissionIncludeShipping;
  String opTaxCollectedBySeller;
  String opshipOpId;
  String opshipOrderid;
  String opshipOrderNumber;
  String opshipShipmentId;
  String opshipTrackingNumber;
  String opshipTrackingUrl;
  String opshipResponse;
  String pluginId;
  String pluginIdentifier;
  String pluginType;
  String pluginCode;
  String pluginActive;
  String pluginDisplayOrder;
  String pluginlangPluginId;
  String pluginlangLangId;
  String pluginName;
  String pluginDescription;
  String selprodId;
  String selprodUserId;
  String selprodProductId;
  String selprodCode;
  String selprodPrice;
  String selprodCost;
  String selprodStock;
  String selprodMinOrderQty;
  String selprodSubtractStock;
  String selprodTrackInventory;
  String selprodThresholdStockLevel;
  String selprodSku;
  String selprodCondition;
  DateTime selprodAddedOn;
  DateTime selprodUpdatedOn;
  DateTime selprodAvailableFrom;
  String selprodComments;
  String selprodActive;
  String selprodCodEnabled;
  String selprodFulfillmentType;
  String selprodSoldCount;
  String selprodUrlKeyword;
  String selprodMaxDownloadTimes;
  String selprodDownloadableLink;
  String selprodDownloadValidityInDays;
  String selprodUrlrewriteId;
  String selprodDeleted;
  String selprodlangSelprodId;
  String selprodlangLangId;
  String selprodTitle;
  String selprodFeatures;
  String selprodWarranty;
  String selprodReturnPolicy;
  String userId;
  String userName;
  String userPhoneDcode;
  String userPhone;
  DateTime userDob;
  String userProfileInfo;
  String userAddress1;
  String userAddress2;
  String userZip;
  String userCountryId;
  String userStateId;
  String userCity;
  String userIsBuyer;
  String userIsSupplier;
  String userParent;
  String userIsAdvertiser;
  String userIsAffiliate;
  String userIsShippingCompany;
  String userAutorenewSubscription;
  String userFbAccessToken;
  String userReferralCode;
  String userReferrerUserId;
  String userAffiliateReferrerUserId;
  String userPreferredDashboard;
  DateTime userRegdate;
  String userCompany;
  String userProductsServices;
  String userAffiliateCommission;
  String userRegisteredInitiallyFor;
  String userOrderTrackingUrl;
  DateTime userUpdatedOn;
  String userDeleted;
  String credentialUserId;
  String credentialUsername;
  String credentialEmail;
  String credentialPassword;
  String credentialActive;
  String credentialVerified;
  String opchargeOpId;
  String opOtherCharges;
  String opshippingOpId;
  String opshippingFulfillmentType;
  String opshippingCode;
  String opshippingRateId;
  String opshippingBySellerUserId;
  String opshippingLevel;
  String opshippingLabel;
  String opshippingCarrierCode;
  String opshippingServiceCode;
  String opshippingPickupAddrId;
  String opshippingDate;
  String opshippingTimeSlotFrom;
  String opshippingTimeSlotTo;
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
  String addrUpdatedOn;
  String stateId;
  String stateCode;
  String stateCountryId;
  String stateIdentifier;
  String stateActive;
  String stateUpdatedOn;
  String statelangStateId;
  String statelangLangId;
  String stateName;
  String countryId;
  String countryCode;
  String countryCodeAlpha3;
  String countryActive;
  String countryZoneId;
  String countryCurrencyId;
  String countryLanguageId;
  String countryUpdatedOn;
  String countrylangCountryId;
  String countrylangLangId;
  String countryName;
  String orrequestId;
  String orrequestUserId;
  String orrequestReference;
  String orrequestOpId;
  String orrequestQty;
  String orrequestReturnreasonId;
  String orrequestType;
  String orrequestDate;
  String orrequestStatus;
  String orrequestPaymentGatewayReqId;
  String orrequestRefundInWallet;
  String orrequestAdminComment;
  String ocrequestId;
  String ocrequestUserId;
  String ocrequestOpId;
  String ocrequestOcreasonId;
  String ocrequestMessage;
  String ocrequestDate;
  String ocrequestStatus;
  String ocrequestPaymentGatewayReqId;
  String ocrequestRefundInWallet;
  String ocrequestAdminComment;
  String returnRequest;
  String cancelRequest;
  ChildOrderDetailCharges charges;
  List<dynamic> taxOptions;
  String orderstatusColorCode;
  String prodRating;
  String reviewsAllowed;
  String productImageUrl;
  String canCancelOrder;
  String canReturnOrder;
  String canSubmitFeedback;
  List<OrderSummary> priceDetail;
  OrderSummary totalAmount;

  factory ChildOrderDetail.fromJson(Map<String, dynamic> json) =>
      ChildOrderDetail(
        opId: json["op_id"],
        opOrderId: json["op_order_id"],
        opInvoiceNumber: json["op_invoice_number"],
        opSelprodId: json["op_selprod_id"],
        opIsBatch: json["op_is_batch"],
        opSelprodUserId: json["op_selprod_user_id"],
        opSelprodCode: json["op_selprod_code"],
        opBatchSelprodId: json["op_batch_selprod_id"],
        opQty: json["op_qty"],
        opUnitPrice: json["op_unit_price"],
        opUnitCost: json["op_unit_cost"],
        opSelprodSku: json["op_selprod_sku"],
        opCommissionCharged: json["op_commission_charged"],
        opCommissionPercentage: json["op_commission_percentage"],
        opAffiliateCommissionCharged: json["op_affiliate_commission_charged"],
        opAffiliateCommissionPercentage:
            json["op_affiliate_commission_percentage"],
        opSelprodCondition: json["op_selprod_condition"],
        opProductModel: json["op_product_model"],
        opProductType: json["op_product_type"],
        opProductLength: json["op_product_length"],
        opProductWidth: json["op_product_width"],
        opProductHeight: json["op_product_height"],
        opProductDimensionUnit: json["op_product_dimension_unit"],
        opProductWeight: json["op_product_weight"],
        opProductWeightUnit: json["op_product_weight_unit"],
        opShopId: json["op_shop_id"],
        opShopOwnerName: json["op_shop_owner_name"],
        opShopOwnerUsername: json["op_shop_owner_username"],
        opShopOwnerEmail: json["op_shop_owner_email"],
        opShopOwnerPhoneDcode: json["op_shop_owner_phone_dcode"],
        opShopOwnerPhone: json["op_shop_owner_phone"],
        opSdurationId: json["op_sduration_id"],
        opStatusId: json["op_status_id"],
        opRefundQty: json["op_refund_qty"],
        opRefundAmount: json["op_refund_amount"],
        opRefundCommission: json["op_refund_commission"],
        opRefundShipping: json["op_refund_shipping"],
        opRefundAffiliateCommission: json["op_refund_affiliate_commission"],
        opShippedDate: json["op_shipped_date"],
        opCompletionDate: DateTime.parse(json["op_completion_date"]),
        opSentReviewReminder: json["op_sent_review_reminder"],
        opReviewReminderCount: json["op_review_reminder_count"],
        opSentLastReminder: json["op_sent_last_reminder"],
        opSelprodMaxDownloadTimes: json["op_selprod_max_download_times"],
        opSelprodDownloadValidityInDays:
            json["op_selprod_download_validity_in_days"],
        opFreeShipUpto: json["op_free_ship_upto"],
        opActualShippingCharges: json["op_actual_shipping_charges"],
        opTaxCode: json["op_tax_code"],
        opRoundingOff: json["op_rounding_off"],
        oplangOpId: json["oplang_op_id"],
        oplangLangId: json["oplang_lang_id"],
        oplangOrderId: json["oplang_order_id"],
        opProductName: json["op_product_name"],
        opSelprodTitle: json["op_selprod_title"],
        opSelprodOptions: json["op_selprod_options"],
        opBrandName: json["op_brand_name"],
        opShopName: json["op_shop_name"],
        opShippingDurationName: json["op_shipping_duration_name"],
        opShippingDurations: json["op_shipping_durations"],
        opProductsDimensionUnitName: json["op_products_dimension_unit_name"],
        opProductWeightUnitName: json["op_product_weight_unit_name"],
        opProductTaxOptions: json["op_product_tax_options"],
        orderId: json["order_id"],
        orderType: json["order_type"],
        orderUserId: json["order_user_id"],
        orderPaymentStatus: json["order_payment_status"],
        orderStatus: json["order_status"],
        orderNetAmount: json["order_net_amount"],
        orderIsWalletSelected: json["order_is_wallet_selected"],
        orderWalletAmountCharge: json["order_wallet_amount_charge"],
        orderTaxCharged: json["order_tax_charged"],
        orderSiteCommission: json["order_site_commission"],
        orderDiscountCouponCode: json["order_discount_coupon_code"],
        orderDiscountType: json["order_discount_type"],
        orderDiscountValue: json["order_discount_value"],
        orderDiscountTotal: json["order_discount_total"],
        orderDiscountInfo: json["order_discount_info"],
        orderVolumeDiscountTotal: json["order_volume_discount_total"],
        orderRewardPointUsed: json["order_reward_point_used"],
        orderRewardPointValue: json["order_reward_point_value"],
        orderUserComments: json["order_user_comments"],
        orderAdminComments: json["order_admin_comments"],
        orderLanguageId: json["order_language_id"],
        orderLanguageCode: json["order_language_code"],
        orderCurrencyId: json["order_currency_id"],
        orderCurrencyCode: json["order_currency_code"],
        orderCurrencyValue: json["order_currency_value"],
        orderShippingapiId: json["order_shippingapi_id"],
        orderShippingapiCode: json["order_shippingapi_code"],
        orderPmethodId: json["order_pmethod_id"],
        orderDateAdded: DateTime.parse(json["order_date_added"]),
        orderDateUpdated: DateTime.parse(json["order_date_updated"]),
        orderReferrerUserId: json["order_referrer_user_id"],
        orderReferrerRewardPoints: json["order_referrer_reward_points"],
        orderReferralRewardPoints: json["order_referral_reward_points"],
        orderAffiliateUserId: json["order_affiliate_user_id"],
        orderAffiliateTotalCommission: json["order_affiliate_total_commission"],
        orderCartData: json["order_cart_data"],
        orderRenew: json["order_renew"],
        orderDeleted: json["order_deleted"],
        orderRoundingOff: json["order_rounding_off"],
        orderstatusId: json["orderstatus_id"],
        orderstatusIdentifier: json["orderstatus_identifier"],
        orderstatusColorClass: json["orderstatus_color_class"],
        orderstatusType: json["orderstatus_type"],
        orderstatusPriority: json["orderstatus_priority"],
        orderstatusIsActive: json["orderstatus_is_active"],
        orderstatusIsDigital: json["orderstatus_is_digital"],
        orderstatuslangOrderstatusId: json["orderstatuslang_orderstatus_id"],
        orderstatuslangLangId: json["orderstatuslang_lang_id"],
        orderstatusName: json["orderstatus_name"],
        opsettingOpId: json["opsetting_op_id"],
        opCommissionIncludeTax: json["op_commission_include_tax"],
        opCommissionIncludeShipping: json["op_commission_include_shipping"],
        opTaxCollectedBySeller: json["op_tax_collected_by_seller"],
        opshipOpId: json["opship_op_id"],
        opshipOrderid: json["opship_orderid"],
        opshipOrderNumber: json["opship_order_number"],
        opshipShipmentId: json["opship_shipment_id"],
        opshipTrackingNumber: json["opship_tracking_number"],
        opshipTrackingUrl: json["opship_tracking_url"],
        opshipResponse: json["opship_response"],
        pluginId: json["plugin_id"],
        pluginIdentifier: json["plugin_identifier"],
        pluginType: json["plugin_type"],
        pluginCode: json["plugin_code"],
        pluginActive: json["plugin_active"],
        pluginDisplayOrder: json["plugin_display_order"],
        pluginlangPluginId: json["pluginlang_plugin_id"],
        pluginlangLangId: json["pluginlang_lang_id"],
        pluginName: json["plugin_name"],
        pluginDescription: json["plugin_description"],
        selprodId: json["selprod_id"],
        selprodUserId: json["selprod_user_id"],
        selprodProductId: json["selprod_product_id"],
        selprodCode: json["selprod_code"],
        selprodPrice: json["selprod_price"],
        selprodCost: json["selprod_cost"],
        selprodStock: json["selprod_stock"],
        selprodMinOrderQty: json["selprod_min_order_qty"],
        selprodSubtractStock: json["selprod_subtract_stock"],
        selprodTrackInventory: json["selprod_track_inventory"],
        selprodThresholdStockLevel: json["selprod_threshold_stock_level"],
        selprodSku: json["selprod_sku"],
        selprodCondition: json["selprod_condition"],
        selprodAddedOn: DateTime.parse(json["selprod_added_on"]),
        selprodUpdatedOn: DateTime.parse(json["selprod_updated_on"]),
        selprodAvailableFrom: DateTime.parse(json["selprod_available_from"]),
        selprodComments: json["selprod_comments"],
        selprodActive: json["selprod_active"],
        selprodCodEnabled: json["selprod_cod_enabled"],
        selprodFulfillmentType: json["selprod_fulfillment_type"],
        selprodSoldCount: json["selprod_sold_count"],
        selprodUrlKeyword: json["selprod_url_keyword"],
        selprodMaxDownloadTimes: json["selprod_max_download_times"],
        selprodDownloadableLink: json["selprod_downloadable_link"],
        selprodDownloadValidityInDays:
            json["selprod_download_validity_in_days"],
        selprodUrlrewriteId: json["selprod_urlrewrite_id"],
        selprodDeleted: json["selprod_deleted"],
        selprodlangSelprodId: json["selprodlang_selprod_id"],
        selprodlangLangId: json["selprodlang_lang_id"],
        selprodTitle: json["selprod_title"],
        selprodFeatures: json["selprod_features"],
        selprodWarranty: json["selprod_warranty"],
        selprodReturnPolicy: json["selprod_return_policy"],
        userId: json["user_id"],
        userName: json["user_name"],
        userPhoneDcode: json["user_phone_dcode"],
        userPhone: json["user_phone"],
        userDob: DateTime.parse(json["user_dob"]),
        userProfileInfo: json["user_profile_info"],
        userAddress1: json["user_address1"],
        userAddress2: json["user_address2"],
        userZip: json["user_zip"],
        userCountryId: json["user_country_id"],
        userStateId: json["user_state_id"],
        userCity: json["user_city"],
        userIsBuyer: json["user_is_buyer"],
        userIsSupplier: json["user_is_supplier"],
        userParent: json["user_parent"],
        userIsAdvertiser: json["user_is_advertiser"],
        userIsAffiliate: json["user_is_affiliate"],
        userIsShippingCompany: json["user_is_shipping_company"],
        userAutorenewSubscription: json["user_autorenew_subscription"],
        userFbAccessToken: json["user_fb_access_token"],
        userReferralCode: json["user_referral_code"],
        userReferrerUserId: json["user_referrer_user_id"],
        userAffiliateReferrerUserId: json["user_affiliate_referrer_user_id"],
        userPreferredDashboard: json["user_preferred_dashboard"],
        userRegdate: DateTime.parse(json["user_regdate"]),
        userCompany: json["user_company"],
        userProductsServices: json["user_products_services"],
        userAffiliateCommission: json["user_affiliate_commission"],
        userRegisteredInitiallyFor: json["user_registered_initially_for"],
        userOrderTrackingUrl: json["user_order_tracking_url"],
        userUpdatedOn: DateTime.parse(json["user_updated_on"]),
        userDeleted: json["user_deleted"],
        credentialUserId: json["credential_user_id"],
        credentialUsername: json["credential_username"],
        credentialEmail: json["credential_email"],
        credentialPassword: json["credential_password"],
        credentialActive: json["credential_active"],
        credentialVerified: json["credential_verified"],
        opchargeOpId: json["opcharge_op_id"],
        opOtherCharges: json["op_other_charges"],
        opshippingOpId: json["opshipping_op_id"],
        opshippingFulfillmentType: json["opshipping_fulfillment_type"],
        opshippingCode: json["opshipping_code"],
        opshippingRateId: json["opshipping_rate_id"],
        opshippingBySellerUserId: json["opshipping_by_seller_user_id"],
        opshippingLevel: json["opshipping_level"],
        opshippingLabel: json["opshipping_label"],
        opshippingCarrierCode: json["opshipping_carrier_code"],
        opshippingServiceCode: json["opshipping_service_code"],
        opshippingPickupAddrId: json["opshipping_pickup_addr_id"],
        opshippingDate: json["opshipping_date"],
        opshippingTimeSlotFrom: json["opshipping_time_slot_from"],
        opshippingTimeSlotTo: json["opshipping_time_slot_to"],
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
        addrUpdatedOn: json["addr_updated_on"],
        stateId: json["state_id"],
        stateCode: json["state_code"],
        stateCountryId: json["state_country_id"],
        stateIdentifier: json["state_identifier"],
        stateActive: json["state_active"],
        stateUpdatedOn: json["state_updated_on"],
        statelangStateId: json["statelang_state_id"],
        statelangLangId: json["statelang_lang_id"],
        stateName: json["state_name"],
        countryId: json["country_id"],
        countryCode: json["country_code"],
        countryCodeAlpha3: json["country_code_alpha3"],
        countryActive: json["country_active"],
        countryZoneId: json["country_zone_id"],
        countryCurrencyId: json["country_currency_id"],
        countryLanguageId: json["country_language_id"],
        countryUpdatedOn: json["country_updated_on"],
        countrylangCountryId: json["countrylang_country_id"],
        countrylangLangId: json["countrylang_lang_id"],
        countryName: json["country_name"],
        orrequestId: json["orrequest_id"],
        orrequestUserId: json["orrequest_user_id"],
        orrequestReference: json["orrequest_reference"],
        orrequestOpId: json["orrequest_op_id"],
        orrequestQty: json["orrequest_qty"],
        orrequestReturnreasonId: json["orrequest_returnreason_id"],
        orrequestType: json["orrequest_type"],
        orrequestDate: json["orrequest_date"],
        orrequestStatus: json["orrequest_status"],
        orrequestPaymentGatewayReqId: json["orrequest_payment_gateway_req_id"],
        orrequestRefundInWallet: json["orrequest_refund_in_wallet"],
        orrequestAdminComment: json["orrequest_admin_comment"],
        ocrequestId: json["ocrequest_id"],
        ocrequestUserId: json["ocrequest_user_id"],
        ocrequestOpId: json["ocrequest_op_id"],
        ocrequestOcreasonId: json["ocrequest_ocreason_id"],
        ocrequestMessage: json["ocrequest_message"],
        ocrequestDate: json["ocrequest_date"],
        ocrequestStatus: json["ocrequest_status"],
        ocrequestPaymentGatewayReqId: json["ocrequest_payment_gateway_req_id"],
        ocrequestRefundInWallet: json["ocrequest_refund_in_wallet"],
        ocrequestAdminComment: json["ocrequest_admin_comment"],
        returnRequest: json["return_request"],
        cancelRequest: json["cancel_request"],
        charges: ChildOrderDetailCharges.fromJson(json["charges"]),
        taxOptions: List<dynamic>.from(json["taxOptions"].map((x) => x)),
        orderstatusColorCode: json["orderstatus_color_code"],
        prodRating: json["prod_rating"],
        reviewsAllowed: json["reviewsAllowed"],
        productImageUrl: json["product_image_url"],
        canCancelOrder: json["canCancelOrder"],
        canReturnOrder: json["canReturnOrder"],
        canSubmitFeedback: json["canSubmitFeedback"],
        priceDetail: List<OrderSummary>.from(
            json["priceDetail"].map((x) => OrderSummary.fromJson(x))),
        totalAmount: OrderSummary.fromJson(json["totalAmount"]),
      );

  Map<String, dynamic> toJson() => {
        "op_id": opId,
        "op_order_id": opOrderId,
        "op_invoice_number": opInvoiceNumber,
        "op_selprod_id": opSelprodId,
        "op_is_batch": opIsBatch,
        "op_selprod_user_id": opSelprodUserId,
        "op_selprod_code": opSelprodCode,
        "op_batch_selprod_id": opBatchSelprodId,
        "op_qty": opQty,
        "op_unit_price": opUnitPrice,
        "op_unit_cost": opUnitCost,
        "op_selprod_sku": opSelprodSku,
        "op_commission_charged": opCommissionCharged,
        "op_commission_percentage": opCommissionPercentage,
        "op_affiliate_commission_charged": opAffiliateCommissionCharged,
        "op_affiliate_commission_percentage": opAffiliateCommissionPercentage,
        "op_selprod_condition": opSelprodCondition,
        "op_product_model": opProductModel,
        "op_product_type": opProductType,
        "op_product_length": opProductLength,
        "op_product_width": opProductWidth,
        "op_product_height": opProductHeight,
        "op_product_dimension_unit": opProductDimensionUnit,
        "op_product_weight": opProductWeight,
        "op_product_weight_unit": opProductWeightUnit,
        "op_shop_id": opShopId,
        "op_shop_owner_name": opShopOwnerName,
        "op_shop_owner_username": opShopOwnerUsername,
        "op_shop_owner_email": opShopOwnerEmail,
        "op_shop_owner_phone_dcode": opShopOwnerPhoneDcode,
        "op_shop_owner_phone": opShopOwnerPhone,
        "op_sduration_id": opSdurationId,
        "op_status_id": opStatusId,
        "op_refund_qty": opRefundQty,
        "op_refund_amount": opRefundAmount,
        "op_refund_commission": opRefundCommission,
        "op_refund_shipping": opRefundShipping,
        "op_refund_affiliate_commission": opRefundAffiliateCommission,
        "op_shipped_date": opShippedDate,
        "op_completion_date": opCompletionDate.toIso8601String(),
        "op_sent_review_reminder": opSentReviewReminder,
        "op_review_reminder_count": opReviewReminderCount,
        "op_sent_last_reminder": opSentLastReminder,
        "op_selprod_max_download_times": opSelprodMaxDownloadTimes,
        "op_selprod_download_validity_in_days": opSelprodDownloadValidityInDays,
        "op_free_ship_upto": opFreeShipUpto,
        "op_actual_shipping_charges": opActualShippingCharges,
        "op_tax_code": opTaxCode,
        "op_rounding_off": opRoundingOff,
        "oplang_op_id": oplangOpId,
        "oplang_lang_id": oplangLangId,
        "oplang_order_id": oplangOrderId,
        "op_product_name": opProductName,
        "op_selprod_title": opSelprodTitle,
        "op_selprod_options": opSelprodOptions,
        "op_brand_name": opBrandName,
        "op_shop_name": opShopName,
        "op_shipping_duration_name": opShippingDurationName,
        "op_shipping_durations": opShippingDurations,
        "op_products_dimension_unit_name": opProductsDimensionUnitName,
        "op_product_weight_unit_name": opProductWeightUnitName,
        "op_product_tax_options": opProductTaxOptions,
        "order_id": orderId,
        "order_type": orderType,
        "order_user_id": orderUserId,
        "order_payment_status": orderPaymentStatus,
        "order_status": orderStatus,
        "order_net_amount": orderNetAmount,
        "order_is_wallet_selected": orderIsWalletSelected,
        "order_wallet_amount_charge": orderWalletAmountCharge,
        "order_tax_charged": orderTaxCharged,
        "order_site_commission": orderSiteCommission,
        "order_discount_coupon_code": orderDiscountCouponCode,
        "order_discount_type": orderDiscountType,
        "order_discount_value": orderDiscountValue,
        "order_discount_total": orderDiscountTotal,
        "order_discount_info": orderDiscountInfo,
        "order_volume_discount_total": orderVolumeDiscountTotal,
        "order_reward_point_used": orderRewardPointUsed,
        "order_reward_point_value": orderRewardPointValue,
        "order_user_comments": orderUserComments,
        "order_admin_comments": orderAdminComments,
        "order_language_id": orderLanguageId,
        "order_language_code": orderLanguageCode,
        "order_currency_id": orderCurrencyId,
        "order_currency_code": orderCurrencyCode,
        "order_currency_value": orderCurrencyValue,
        "order_shippingapi_id": orderShippingapiId,
        "order_shippingapi_code": orderShippingapiCode,
        "order_pmethod_id": orderPmethodId,
        "order_date_added": orderDateAdded.toIso8601String(),
        "order_date_updated": orderDateUpdated.toIso8601String(),
        "order_referrer_user_id": orderReferrerUserId,
        "order_referrer_reward_points": orderReferrerRewardPoints,
        "order_referral_reward_points": orderReferralRewardPoints,
        "order_affiliate_user_id": orderAffiliateUserId,
        "order_affiliate_total_commission": orderAffiliateTotalCommission,
        "order_cart_data": orderCartData,
        "order_renew": orderRenew,
        "order_deleted": orderDeleted,
        "order_rounding_off": orderRoundingOff,
        "orderstatus_id": orderstatusId,
        "orderstatus_identifier": orderstatusIdentifier,
        "orderstatus_color_class": orderstatusColorClass,
        "orderstatus_type": orderstatusType,
        "orderstatus_priority": orderstatusPriority,
        "orderstatus_is_active": orderstatusIsActive,
        "orderstatus_is_digital": orderstatusIsDigital,
        "orderstatuslang_orderstatus_id": orderstatuslangOrderstatusId,
        "orderstatuslang_lang_id": orderstatuslangLangId,
        "orderstatus_name": orderstatusName,
        "opsetting_op_id": opsettingOpId,
        "op_commission_include_tax": opCommissionIncludeTax,
        "op_commission_include_shipping": opCommissionIncludeShipping,
        "op_tax_collected_by_seller": opTaxCollectedBySeller,
        "opship_op_id": opshipOpId,
        "opship_orderid": opshipOrderid,
        "opship_order_number": opshipOrderNumber,
        "opship_shipment_id": opshipShipmentId,
        "opship_tracking_number": opshipTrackingNumber,
        "opship_tracking_url": opshipTrackingUrl,
        "opship_response": opshipResponse,
        "plugin_id": pluginId,
        "plugin_identifier": pluginIdentifier,
        "plugin_type": pluginType,
        "plugin_code": pluginCode,
        "plugin_active": pluginActive,
        "plugin_display_order": pluginDisplayOrder,
        "pluginlang_plugin_id": pluginlangPluginId,
        "pluginlang_lang_id": pluginlangLangId,
        "plugin_name": pluginName,
        "plugin_description": pluginDescription,
        "selprod_id": selprodId,
        "selprod_user_id": selprodUserId,
        "selprod_product_id": selprodProductId,
        "selprod_code": selprodCode,
        "selprod_price": selprodPrice,
        "selprod_cost": selprodCost,
        "selprod_stock": selprodStock,
        "selprod_min_order_qty": selprodMinOrderQty,
        "selprod_subtract_stock": selprodSubtractStock,
        "selprod_track_inventory": selprodTrackInventory,
        "selprod_threshold_stock_level": selprodThresholdStockLevel,
        "selprod_sku": selprodSku,
        "selprod_condition": selprodCondition,
        "selprod_added_on": selprodAddedOn.toIso8601String(),
        "selprod_updated_on": selprodUpdatedOn.toIso8601String(),
        "selprod_available_from": selprodAvailableFrom.toIso8601String(),
        "selprod_comments": selprodComments,
        "selprod_active": selprodActive,
        "selprod_cod_enabled": selprodCodEnabled,
        "selprod_fulfillment_type": selprodFulfillmentType,
        "selprod_sold_count": selprodSoldCount,
        "selprod_url_keyword": selprodUrlKeyword,
        "selprod_max_download_times": selprodMaxDownloadTimes,
        "selprod_downloadable_link": selprodDownloadableLink,
        "selprod_download_validity_in_days": selprodDownloadValidityInDays,
        "selprod_urlrewrite_id": selprodUrlrewriteId,
        "selprod_deleted": selprodDeleted,
        "selprodlang_selprod_id": selprodlangSelprodId,
        "selprodlang_lang_id": selprodlangLangId,
        "selprod_title": selprodTitle,
        "selprod_features": selprodFeatures,
        "selprod_warranty": selprodWarranty,
        "selprod_return_policy": selprodReturnPolicy,
        "user_id": userId,
        "user_name": userName,
        "user_phone_dcode": userPhoneDcode,
        "user_phone": userPhone,
        "user_dob":
            "${userDob.year.toString().padLeft(4, '0')}-${userDob.month.toString().padLeft(2, '0')}-${userDob.day.toString().padLeft(2, '0')}",
        "user_profile_info": userProfileInfo,
        "user_address1": userAddress1,
        "user_address2": userAddress2,
        "user_zip": userZip,
        "user_country_id": userCountryId,
        "user_state_id": userStateId,
        "user_city": userCity,
        "user_is_buyer": userIsBuyer,
        "user_is_supplier": userIsSupplier,
        "user_parent": userParent,
        "user_is_advertiser": userIsAdvertiser,
        "user_is_affiliate": userIsAffiliate,
        "user_is_shipping_company": userIsShippingCompany,
        "user_autorenew_subscription": userAutorenewSubscription,
        "user_fb_access_token": userFbAccessToken,
        "user_referral_code": userReferralCode,
        "user_referrer_user_id": userReferrerUserId,
        "user_affiliate_referrer_user_id": userAffiliateReferrerUserId,
        "user_preferred_dashboard": userPreferredDashboard,
        "user_regdate": userRegdate.toIso8601String(),
        "user_company": userCompany,
        "user_products_services": userProductsServices,
        "user_affiliate_commission": userAffiliateCommission,
        "user_registered_initially_for": userRegisteredInitiallyFor,
        "user_order_tracking_url": userOrderTrackingUrl,
        "user_updated_on": userUpdatedOn.toIso8601String(),
        "user_deleted": userDeleted,
        "credential_user_id": credentialUserId,
        "credential_username": credentialUsername,
        "credential_email": credentialEmail,
        "credential_password": credentialPassword,
        "credential_active": credentialActive,
        "credential_verified": credentialVerified,
        "opcharge_op_id": opchargeOpId,
        "op_other_charges": opOtherCharges,
        "opshipping_op_id": opshippingOpId,
        "opshipping_fulfillment_type": opshippingFulfillmentType,
        "opshipping_code": opshippingCode,
        "opshipping_rate_id": opshippingRateId,
        "opshipping_by_seller_user_id": opshippingBySellerUserId,
        "opshipping_level": opshippingLevel,
        "opshipping_label": opshippingLabel,
        "opshipping_carrier_code": opshippingCarrierCode,
        "opshipping_service_code": opshippingServiceCode,
        "opshipping_pickup_addr_id": opshippingPickupAddrId,
        "opshipping_date": opshippingDate,
        "opshipping_time_slot_from": opshippingTimeSlotFrom,
        "opshipping_time_slot_to": opshippingTimeSlotTo,
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
        "addr_updated_on": addrUpdatedOn,
        "state_id": stateId,
        "state_code": stateCode,
        "state_country_id": stateCountryId,
        "state_identifier": stateIdentifier,
        "state_active": stateActive,
        "state_updated_on": stateUpdatedOn,
        "statelang_state_id": statelangStateId,
        "statelang_lang_id": statelangLangId,
        "state_name": stateName,
        "country_id": countryId,
        "country_code": countryCode,
        "country_code_alpha3": countryCodeAlpha3,
        "country_active": countryActive,
        "country_zone_id": countryZoneId,
        "country_currency_id": countryCurrencyId,
        "country_language_id": countryLanguageId,
        "country_updated_on": countryUpdatedOn,
        "countrylang_country_id": countrylangCountryId,
        "countrylang_lang_id": countrylangLangId,
        "country_name": countryName,
        "orrequest_id": orrequestId,
        "orrequest_user_id": orrequestUserId,
        "orrequest_reference": orrequestReference,
        "orrequest_op_id": orrequestOpId,
        "orrequest_qty": orrequestQty,
        "orrequest_returnreason_id": orrequestReturnreasonId,
        "orrequest_type": orrequestType,
        "orrequest_date": orrequestDate,
        "orrequest_status": orrequestStatus,
        "orrequest_payment_gateway_req_id": orrequestPaymentGatewayReqId,
        "orrequest_refund_in_wallet": orrequestRefundInWallet,
        "orrequest_admin_comment": orrequestAdminComment,
        "ocrequest_id": ocrequestId,
        "ocrequest_user_id": ocrequestUserId,
        "ocrequest_op_id": ocrequestOpId,
        "ocrequest_ocreason_id": ocrequestOcreasonId,
        "ocrequest_message": ocrequestMessage,
        "ocrequest_date": ocrequestDate,
        "ocrequest_status": ocrequestStatus,
        "ocrequest_payment_gateway_req_id": ocrequestPaymentGatewayReqId,
        "ocrequest_refund_in_wallet": ocrequestRefundInWallet,
        "ocrequest_admin_comment": ocrequestAdminComment,
        "return_request": returnRequest,
        "cancel_request": cancelRequest,
        "charges": charges.toJson(),
        "taxOptions": List<dynamic>.from(taxOptions.map((x) => x)),
        "orderstatus_color_code": orderstatusColorCode,
        "prod_rating": prodRating,
        "reviewsAllowed": reviewsAllowed,
        "product_image_url": productImageUrl,
        "canCancelOrder": canCancelOrder,
        "canReturnOrder": canReturnOrder,
        "canSubmitFeedback": canSubmitFeedback,
        "priceDetail": List<dynamic>.from(priceDetail.map((x) => x.toJson())),
        "totalAmount": totalAmount.toJson(),
      };
}

class ChildOrderDetailCharges {
  ChildOrderDetailCharges({
    this.empty,
  });

  Empty empty;

  factory ChildOrderDetailCharges.fromJson(Map<String, dynamic> json) =>
      ChildOrderDetailCharges(
        empty: Empty.fromJson(json[""]),
      );

  Map<String, dynamic> toJson() => {
        "": empty.toJson(),
      };
}

class Empty {
  Empty({
    this.opchargeType,
    this.opchargeAmount,
  });

  String opchargeType;
  String opchargeAmount;

  factory Empty.fromJson(Map<String, dynamic> json) => Empty(
        opchargeType: json["opcharge_type"],
        opchargeAmount: json["opcharge_amount"],
      );

  Map<String, dynamic> toJson() => {
        "opcharge_type": opchargeType,
        "opcharge_amount": opchargeAmount,
      };
}

class OrderSummary {
  OrderSummary({
    this.key,
    this.value,
  });

  String key;
  String value;

  factory OrderSummary.fromJson(Map<String, dynamic> json) => OrderSummary(
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
      };
}

class DigitalDownloadLinks {
  DigitalDownloadLinks();

  factory DigitalDownloadLinks.fromJson(Map<String, dynamic> json) =>
      DigitalDownloadLinks();

  Map<String, dynamic> toJson() => {};
}

class Languages {
  Languages({
    this.the1,
  });

  String the1;

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        the1: json["1"],
      );

  Map<String, dynamic> toJson() => {
        "1": the1,
      };
}

class OrderDetail {
  OrderDetail({
    this.orderId,
    this.orderType,
    this.orderUserId,
    this.orderPaymentStatus,
    this.orderStatus,
    this.orderNetAmount,
    this.orderIsWalletSelected,
    this.orderWalletAmountCharge,
    this.orderTaxCharged,
    this.orderSiteCommission,
    this.orderDiscountCouponCode,
    this.orderDiscountType,
    this.orderDiscountValue,
    this.orderDiscountTotal,
    this.orderDiscountInfo,
    this.orderVolumeDiscountTotal,
    this.orderRewardPointUsed,
    this.orderRewardPointValue,
    this.orderUserComments,
    this.orderAdminComments,
    this.orderLanguageId,
    this.orderLanguageCode,
    this.orderCurrencyId,
    this.orderCurrencyCode,
    this.orderCurrencyValue,
    this.orderShippingapiId,
    this.orderShippingapiCode,
    this.orderPmethodId,
    this.orderDateAdded,
    this.orderDateUpdated,
    this.orderReferrerUserId,
    this.orderReferrerRewardPoints,
    this.orderReferralRewardPoints,
    this.orderAffiliateUserId,
    this.orderAffiliateTotalCommission,
    this.orderCartData,
    this.orderRenew,
    this.orderDeleted,
    this.orderRoundingOff,
    this.orderlangOrderId,
    this.orderlangLangId,
    this.orderShippingapiName,
    this.pluginId,
    this.pluginIdentifier,
    this.pluginType,
    this.pluginCode,
    this.pluginActive,
    this.pluginDisplayOrder,
    this.pluginlangPluginId,
    this.pluginlangLangId,
    this.pluginName,
    this.pluginDescription,
    this.charges,
    this.billingAddress,
    this.shippingAddress,
    this.pickupAddress,
    this.comments,
    this.payments,
    this.pickupDetail,
  });

  String orderId;
  String orderType;
  String orderUserId;
  String orderPaymentStatus;
  String orderStatus;
  String orderNetAmount;
  String orderIsWalletSelected;
  String orderWalletAmountCharge;
  String orderTaxCharged;
  String orderSiteCommission;
  String orderDiscountCouponCode;
  String orderDiscountType;
  String orderDiscountValue;
  String orderDiscountTotal;
  String orderDiscountInfo;
  String orderVolumeDiscountTotal;
  String orderRewardPointUsed;
  String orderRewardPointValue;
  String orderUserComments;
  String orderAdminComments;
  String orderLanguageId;
  String orderLanguageCode;
  String orderCurrencyId;
  String orderCurrencyCode;
  String orderCurrencyValue;
  String orderShippingapiId;
  String orderShippingapiCode;
  String orderPmethodId;
  DateTime orderDateAdded;
  DateTime orderDateUpdated;
  String orderReferrerUserId;
  String orderReferrerRewardPoints;
  String orderReferralRewardPoints;
  String orderAffiliateUserId;
  String orderAffiliateTotalCommission;
  String orderCartData;
  String orderRenew;
  String orderDeleted;
  String orderRoundingOff;
  String orderlangOrderId;
  String orderlangLangId;
  String orderShippingapiName;
  String pluginId;
  String pluginIdentifier;
  String pluginType;
  String pluginCode;
  String pluginActive;
  String pluginDisplayOrder;
  String pluginlangPluginId;
  String pluginlangLangId;
  String pluginName;
  String pluginDescription;
  OrderDetailCharges charges;
  BillingAddress billingAddress;
  DigitalDownloadLinks shippingAddress;
  DigitalDownloadLinks pickupAddress;
  List<dynamic> comments;
  List<Payment> payments;
  DigitalDownloadLinks pickupDetail;

  factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
        orderId: json["order_id"],
        orderType: json["order_type"],
        orderUserId: json["order_user_id"],
        orderPaymentStatus: json["order_payment_status"],
        orderStatus: json["order_status"],
        orderNetAmount: json["order_net_amount"],
        orderIsWalletSelected: json["order_is_wallet_selected"],
        orderWalletAmountCharge: json["order_wallet_amount_charge"],
        orderTaxCharged: json["order_tax_charged"],
        orderSiteCommission: json["order_site_commission"],
        orderDiscountCouponCode: json["order_discount_coupon_code"],
        orderDiscountType: json["order_discount_type"],
        orderDiscountValue: json["order_discount_value"],
        orderDiscountTotal: json["order_discount_total"],
        orderDiscountInfo: json["order_discount_info"],
        orderVolumeDiscountTotal: json["order_volume_discount_total"],
        orderRewardPointUsed: json["order_reward_point_used"],
        orderRewardPointValue: json["order_reward_point_value"],
        orderUserComments: json["order_user_comments"],
        orderAdminComments: json["order_admin_comments"],
        orderLanguageId: json["order_language_id"],
        orderLanguageCode: json["order_language_code"],
        orderCurrencyId: json["order_currency_id"],
        orderCurrencyCode: json["order_currency_code"],
        orderCurrencyValue: json["order_currency_value"],
        orderShippingapiId: json["order_shippingapi_id"],
        orderShippingapiCode: json["order_shippingapi_code"],
        orderPmethodId: json["order_pmethod_id"],
        orderDateAdded: DateTime.parse(json["order_date_added"]),
        orderDateUpdated: DateTime.parse(json["order_date_updated"]),
        orderReferrerUserId: json["order_referrer_user_id"],
        orderReferrerRewardPoints: json["order_referrer_reward_points"],
        orderReferralRewardPoints: json["order_referral_reward_points"],
        orderAffiliateUserId: json["order_affiliate_user_id"],
        orderAffiliateTotalCommission: json["order_affiliate_total_commission"],
        orderCartData: json["order_cart_data"],
        orderRenew: json["order_renew"],
        orderDeleted: json["order_deleted"],
        orderRoundingOff: json["order_rounding_off"],
        orderlangOrderId: json["orderlang_order_id"],
        orderlangLangId: json["orderlang_lang_id"],
        orderShippingapiName: json["order_shippingapi_name"],
        pluginId: json["plugin_id"],
        pluginIdentifier: json["plugin_identifier"],
        pluginType: json["plugin_type"],
        pluginCode: json["plugin_code"],
        pluginActive: json["plugin_active"],
        pluginDisplayOrder: json["plugin_display_order"],
        pluginlangPluginId: json["pluginlang_plugin_id"],
        pluginlangLangId: json["pluginlang_lang_id"],
        pluginName: json["plugin_name"],
        pluginDescription: json["plugin_description"],
        charges: OrderDetailCharges.fromJson(json["charges"]),
        billingAddress: BillingAddress.fromJson(json["billingAddress"]),
        shippingAddress: DigitalDownloadLinks.fromJson(json["shippingAddress"]),
        pickupAddress: DigitalDownloadLinks.fromJson(json["pickupAddress"]),
        comments: List<dynamic>.from(json["comments"].map((x) => x)),
        payments: List<Payment>.from(
            json["payments"].map((x) => Payment.fromJson(x))),
        pickupDetail: DigitalDownloadLinks.fromJson(json["pickupDetail"]),
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "order_type": orderType,
        "order_user_id": orderUserId,
        "order_payment_status": orderPaymentStatus,
        "order_status": orderStatus,
        "order_net_amount": orderNetAmount,
        "order_is_wallet_selected": orderIsWalletSelected,
        "order_wallet_amount_charge": orderWalletAmountCharge,
        "order_tax_charged": orderTaxCharged,
        "order_site_commission": orderSiteCommission,
        "order_discount_coupon_code": orderDiscountCouponCode,
        "order_discount_type": orderDiscountType,
        "order_discount_value": orderDiscountValue,
        "order_discount_total": orderDiscountTotal,
        "order_discount_info": orderDiscountInfo,
        "order_volume_discount_total": orderVolumeDiscountTotal,
        "order_reward_point_used": orderRewardPointUsed,
        "order_reward_point_value": orderRewardPointValue,
        "order_user_comments": orderUserComments,
        "order_admin_comments": orderAdminComments,
        "order_language_id": orderLanguageId,
        "order_language_code": orderLanguageCode,
        "order_currency_id": orderCurrencyId,
        "order_currency_code": orderCurrencyCode,
        "order_currency_value": orderCurrencyValue,
        "order_shippingapi_id": orderShippingapiId,
        "order_shippingapi_code": orderShippingapiCode,
        "order_pmethod_id": orderPmethodId,
        "order_date_added": orderDateAdded.toIso8601String(),
        "order_date_updated": orderDateUpdated.toIso8601String(),
        "order_referrer_user_id": orderReferrerUserId,
        "order_referrer_reward_points": orderReferrerRewardPoints,
        "order_referral_reward_points": orderReferralRewardPoints,
        "order_affiliate_user_id": orderAffiliateUserId,
        "order_affiliate_total_commission": orderAffiliateTotalCommission,
        "order_cart_data": orderCartData,
        "order_renew": orderRenew,
        "order_deleted": orderDeleted,
        "order_rounding_off": orderRoundingOff,
        "orderlang_order_id": orderlangOrderId,
        "orderlang_lang_id": orderlangLangId,
        "order_shippingapi_name": orderShippingapiName,
        "plugin_id": pluginId,
        "plugin_identifier": pluginIdentifier,
        "plugin_type": pluginType,
        "plugin_code": pluginCode,
        "plugin_active": pluginActive,
        "plugin_display_order": pluginDisplayOrder,
        "pluginlang_plugin_id": pluginlangPluginId,
        "pluginlang_lang_id": pluginlangLangId,
        "plugin_name": pluginName,
        "plugin_description": pluginDescription,
        "charges": charges.toJson(),
        "billingAddress": billingAddress.toJson(),
        "shippingAddress": shippingAddress.toJson(),
        "pickupAddress": pickupAddress.toJson(),
        "comments": List<dynamic>.from(comments.map((x) => x)),
        "payments": List<dynamic>.from(payments.map((x) => x.toJson())),
        "pickupDetail": pickupDetail.toJson(),
      };
}

class BillingAddress {
  BillingAddress({
    this.ouaOrderId,
    this.ouaOpId,
    this.ouaType,
    this.ouaName,
    this.ouaAddress1,
    this.ouaAddress2,
    this.ouaCity,
    this.ouaState,
    this.ouaStateCode,
    this.ouaCountry,
    this.ouaCountryCode,
    this.ouaCountryCodeAlpha3,
    this.ouaPhoneDcode,
    this.ouaPhone,
    this.ouaZip,
  });

  String ouaOrderId;
  String ouaOpId;
  String ouaType;
  String ouaName;
  String ouaAddress1;
  String ouaAddress2;
  String ouaCity;
  String ouaState;
  String ouaStateCode;
  String ouaCountry;
  String ouaCountryCode;
  String ouaCountryCodeAlpha3;
  String ouaPhoneDcode;
  String ouaPhone;
  String ouaZip;

  factory BillingAddress.fromJson(Map<String, dynamic> json) => BillingAddress(
        ouaOrderId: json["oua_order_id"],
        ouaOpId: json["oua_op_id"],
        ouaType: json["oua_type"],
        ouaName: json["oua_name"],
        ouaAddress1: json["oua_address1"],
        ouaAddress2: json["oua_address2"],
        ouaCity: json["oua_city"],
        ouaState: json["oua_state"],
        ouaStateCode: json["oua_state_code"],
        ouaCountry: json["oua_country"],
        ouaCountryCode: json["oua_country_code"],
        ouaCountryCodeAlpha3: json["oua_country_code_alpha3"],
        ouaPhoneDcode: json["oua_phone_dcode"],
        ouaPhone: json["oua_phone"],
        ouaZip: json["oua_zip"],
      );

  Map<String, dynamic> toJson() => {
        "oua_order_id": ouaOrderId,
        "oua_op_id": ouaOpId,
        "oua_type": ouaType,
        "oua_name": ouaName,
        "oua_address1": ouaAddress1,
        "oua_address2": ouaAddress2,
        "oua_city": ouaCity,
        "oua_state": ouaState,
        "oua_state_code": ouaStateCode,
        "oua_country": ouaCountry,
        "oua_country_code": ouaCountryCode,
        "oua_country_code_alpha3": ouaCountryCodeAlpha3,
        "oua_phone_dcode": ouaPhoneDcode,
        "oua_phone": ouaPhone,
        "oua_zip": ouaZip,
      };
}

class OrderDetailCharges {
  OrderDetailCharges({
    this.the31,
  });

  List<Empty> the31;

  factory OrderDetailCharges.fromJson(Map<String, dynamic> json) =>
      OrderDetailCharges(
        the31: List<Empty>.from(json["31"].map((x) => Empty.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "31": List<dynamic>.from(the31.map((x) => x.toJson())),
      };
}

class Payment {
  Payment({
    this.opaymentId,
    this.opaymentOrderId,
    this.opaymentMethod,
    this.opaymentGatewayTxnId,
    this.opaymentAmount,
    this.opaymentTxnStatus,
    this.opaymentComments,
    this.opaymentGatewayResponse,
    this.opaymentDate,
  });

  String opaymentId;
  String opaymentOrderId;
  String opaymentMethod;
  String opaymentGatewayTxnId;
  String opaymentAmount;
  String opaymentTxnStatus;
  String opaymentComments;
  String opaymentGatewayResponse;
  DateTime opaymentDate;

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        opaymentId: json["opayment_id"],
        opaymentOrderId: json["opayment_order_id"],
        opaymentMethod: json["opayment_method"],
        opaymentGatewayTxnId: json["opayment_gateway_txn_id"],
        opaymentAmount: json["opayment_amount"],
        opaymentTxnStatus: json["opayment_txn_status"],
        opaymentComments: json["opayment_comments"],
        opaymentGatewayResponse: json["opayment_gateway_response"],
        opaymentDate: DateTime.parse(json["opayment_date"]),
      );

  Map<String, dynamic> toJson() => {
        "opayment_id": opaymentId,
        "opayment_order_id": opaymentOrderId,
        "opayment_method": opaymentMethod,
        "opayment_gateway_txn_id": opaymentGatewayTxnId,
        "opayment_amount": opaymentAmount,
        "opayment_txn_status": opaymentTxnStatus,
        "opayment_comments": opaymentComments,
        "opayment_gateway_response": opaymentGatewayResponse,
        "opayment_date": opaymentDate.toIso8601String(),
      };
}
