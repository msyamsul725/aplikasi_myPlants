import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myplants/core.dart';

class OrderService {
  static addOrder({
    required double total,
    required List<Myplants> items,
  }) async {
    var productList = [];

    for (var i = 0; i < items.length; i++) {
      var myplant = items[i];

      productList.add({
        "plant_name": myplant.plantName,
        "price": myplant.price,
        "photo": myplant.photo,
        "rating": myplant.rating,
        "description": myplant.description,
      });
    }

    await FirebaseFirestore.instance.collection("orders").add({
      "created_at": Timestamp.now(),
      "total": total,
      "item": productList,
    });
  }
}
