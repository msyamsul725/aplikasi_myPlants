import 'package:get/get.dart';
import 'package:myplants/core.dart';
import 'package:myplants/service/order_service.dart';

class CheckOutController extends GetxController {
  static late CheckOutController instance;
  late CheckOutView? view;

  saveOrder() async {
    await OrderService.addOrder(
      total: CartService.total,
      items: CartService.cartItems,
    );
    CartService.deleteAll();

    Get.back();
  }
}
