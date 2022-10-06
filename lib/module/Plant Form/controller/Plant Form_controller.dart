import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../../../shared/util/input/input.dart';
import '../view/Plant Form_view.dart';

class PlantFormController extends GetxController {
  PlantFormView? view;

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

  doSave() async {
    var plant_name = Input.get("plant_name");
    var photo = Input.get("photo");
    var price = Input.get("price");
    var rating = Input.get("rating");
    var description = Input.get("description");

    await FirebaseFirestore.instance.collection("myplants").add({
      "plant_name": plant_name,
      "price": price,
      "photo": photo,
      "rating": rating,
      "description": description,
      "created_at": Timestamp.now(),
    });

    Get.back();
  }
}
