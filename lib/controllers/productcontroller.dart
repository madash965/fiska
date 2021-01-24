// import 'package:fiska/models/product.dart';
// import 'package:fiska/services/api_service.dart';
// import 'package:get/get.dart';

// class ProductController extends GetxController {
//   var productList = List<Product>().obs;
//   var isLoading = true.obs;

//   @override
//   void onInit() {
//     fetchProducts();
//     super.onInit();
//   }

//   void fetchProducts() async {
//     try {
//       isLoading(true);
//       var products = await ApiService.fetchProducts();
//       if (products != null) {
//         productList.assignAll(products);
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }
