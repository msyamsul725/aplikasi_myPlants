import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myplants/models/myplants/myplants.dart';

class MyplantsService {
  static addProduct(Myplants myplants) async {
    FirebaseFirestore.instance.collection("myplantNew").add({
      "plant_name": myplants.plantName,
      "photo": myplants.photo,
      "price": myplants.price,
      "rating": myplants.rating,
      "description": myplants.description,
    });
  }
}
