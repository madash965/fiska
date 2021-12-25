import 'package:fiska/controllers/exception_controller.dart';
import 'package:fiska/models/orders.dart';
import 'package:fiska/services/api_service.dart';
import 'package:get/get.dart';

class OrderController extends GetxController with BaseController {
  var orderList = [].obs;
  var isLoading = true.obs;
  var orderDetail = OrderDetailsData().obs;

  void fetchOrderListing() async {
    try {
      isLoading(true);
      var result = await ApiService.orderListing().catchError(handleError);
      if (result != null) {
        result.orders.forEach((element) {
          orderList.add(element);
        });
      } else {
        return;
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchOrderDetails(String id) async {
    try {
      var result = await ApiService.orderDetails(id).catchError(handleError);
      if (result != null) {
        orderDetail.value = result;
        print(orderDetail.value);
      } else {
        orderDetail.value = null;
      }
    } catch (e) {}
  }
}
