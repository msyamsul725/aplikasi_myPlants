import 'package:get/get.dart';
import 'package:myplants/core.dart';
import 'package:myplants/service/myplant_service.dart';

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

  addQty() {
    qty++;
    update();
  }

  decQty() {
    if (qty == 1) return;
    qty--;
    update();
  }

  addToCart() async {
    var myplants = view!.item.copyWith(
      qty: qty,
    );

    CartService.addItem(myplants);
    Get.back();
  }
}
