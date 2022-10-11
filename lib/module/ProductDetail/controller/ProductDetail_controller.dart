import 'package:get/get.dart';
import '../view/ProductDetail_view.dart';

class ProductDetailController extends GetxController {
  ProductDetailView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  int qty = 1;

  addToCart() async {
    var myplants = view!.item.copyWith(
      qty: qty,
    );
  }
}
