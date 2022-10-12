import 'package:get/get.dart';
import 'package:myplants/core.dart';
import '../view/Cart List_view.dart';

class CartListController extends GetxController {
  static late CartListController instance;
  late CartListView? view;

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

  addQty(Myplants myplants) {
    CartService.addQty(myplants);
    update();
  }

  decQty(Myplants myplants) {
    CartService.decQty(myplants);
    update();
  }

  deleteAll() async {
    CartService.deleteAll();
    update();
  }
}
