import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:myplants/models/myplants/myplants.dart';
import 'package:myplants/service/myplant_service.dart';
import 'package:myplants/shared/util/input.dart';

import '../view/Plant Form_view.dart';

class PlantFormController extends GetxController {
  static late PlantFormController instance;
  late PlantFormView? view;

  @override
  void dispose() => super.dispose();
  doSave() async {
    var plant_name = Input.get("plant_name");
    var photo = Input.get("photo");
    var price = Input.get("price");
    //var rating = Input.get("rating");
    var description = Input.get("description");

    MyplantsService.addProduct(Myplants(
      plantName: plant_name,
      photo: photo,
      price: double.parse(price),
      //rating: rating,
      description: description,
    ));
    Get.back();
  }
}
