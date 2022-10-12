import 'package:myplants/models/myplants/myplants.dart';

class CartService {
  static List<Myplants> cartItems = [];

  static addItem(Myplants myplants) {
    cartItems.add(myplants);
  }

  static removeItem(Myplants myplants) {
    cartItems.removeWhere((p) => p.id == myplants.id);
  }

  static addQty(Myplants myplants) {
    var newProductUpdate = myplants.copyWith(
      qty: myplants.qty! + 1,
    );

    var index = cartItems.indexWhere((p) => p.id == myplants.id);
    cartItems[index] = newProductUpdate;
  }

  static decQty(Myplants myplants) {
    if (myplants.qty == 1) {
      cartItems.removeWhere((p) => p.id == myplants.id);
    }
    var NewProductUpdate = myplants.copyWith(
      qty: myplants.qty! - 1,
    );
    var index = cartItems.indexWhere((p) => p.id == myplants.id);
    cartItems[index] = NewProductUpdate;
  }

  static deleteAll() {
    cartItems.clear();
  }

  static isExists(Myplants myplants) {
    return cartItems.where((p) => p.id == myplants.id);
  }

  static get total {
    double total = 0;
    for (var myplants in cartItems) {
      total += myplants.qty! * myplants.price!;
    }
    return total;
  }
}
