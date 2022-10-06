import 'package:flutter/material.dart';
import 'package:myplants/shared/widget/image_picker/image_picker.dart';
import 'package:myplants/shared/widget/rating/rating.dart';
import 'package:myplants/shared/widget/textfield/textarea.dart';
import 'package:myplants/shared/widget/textfield/textfield.dart';
import '../controller/Plant Form_controller.dart';

import 'package:get/get.dart';

class PlantFormView extends StatelessWidget {
  const PlantFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlantFormController>(
      init: PlantFormController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Plant Form"),
            backgroundColor: Color(0xff54805A),
            actions: [
              IconButton(
                onPressed: () => controller.doSave(),
                icon: const Icon(
                  Icons.save,
                  size: 24.0,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  //body
                  ExTextField(
                    id: "plant_name",
                    label: "Plant Name",
                  ),
                  ExImagePicker(
                    id: "photo",
                    label: "Photo",
                  ),
                  ExTextField(
                    id: "price",
                    label: "Price",
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                  ExRating(
                    id: "rating",
                    label: "Rating",
                  ),
                  ExTextArea(id: "description", label: "Description")
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
