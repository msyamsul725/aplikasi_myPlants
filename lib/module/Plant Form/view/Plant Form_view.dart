import 'package:flutter/material.dart';
import 'package:myplants/models/myplants/myplants.dart';
import 'package:myplants/shared/widget/image_picker/image_picker.dart';
import 'package:myplants/shared/widget/rating/rating.dart';
import 'package:myplants/shared/widget/textfield/textarea.dart';
import 'package:myplants/shared/widget/textfield/textfield.dart';
import '../../../shared/widgetA/image_picker/image_picker.dart';
import '../../../shared/widgetA/textfield/numberfield.dart';
import '../../../shared/widgetA/textfield/textarea.dart';
import '../../../shared/widgetA/textfield/textfield.dart';
import '../controller/Plant Form_controller.dart';

import 'package:get/get.dart';

class PlantFormView extends StatelessWidget {
  final Myplants? myplants;
  const PlantFormView({
    Key? key,
    this.myplants,
  }) : super(key: key);

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
                children: [
                  // //body
                  ExTextField(
                    id: "plant_name",
                    label: "Plant Name",
                    value: myplants != null ? myplants!.plantName : null,
                  ),
                  ExImagePicker(
                    id: "photo",
                    label: "Photo",
                    onChanged: (value) {},
                    value: myplants != null ? myplants!.photo : null,
                  ),
                  ExTextField(
                    id: "price",
                    label: "Price",
                    onChanged: (value) {},
                    keyboardType: const TextInputType.numberWithOptions(),
                    value: myplants != null ? myplants!.price.toString() : null,
                  ),
                  const ExRating(
                    id: "rating",
                    label: "Rating",
                  ),
                  ExTextArea(
                    id: "description",
                    label: "Description",
                    value: myplants != null ? myplants!.description : null,
                  )
                  // QImagePicker(
                  //   id: "photo",
                  //   label: "Photo",
                  //   onChanged: (value) {},
                  //   value: myplants != null ? myplants!.photo : null,
                  // ),
                  // QTextField(
                  //   id: "plant_name",
                  //   label: "myplants Name",
                  //   helperText: "Your myplants name",
                  //   onChanged: (value) {},
                  //   value: myplants != null ? myplants!.plantName : null,
                  // ),
                  // QNumberField(
                  //   id: "price",
                  //   label: "Price",
                  //   helperText: "Your myplants price",
                  //   onChanged: (value) {},
                  //   value: myplants != null ? myplants!.price.toString() : null,
                  // ),
                  // QTextArea(
                  //   id: "description",
                  //   label: "Description",
                  //   helperText: "Your myplants description",
                  //   onChanged: (value) {},
                  //   value: myplants != null ? myplants!.description : null,
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
