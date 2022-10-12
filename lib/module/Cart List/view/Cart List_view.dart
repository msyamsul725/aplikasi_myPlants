import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myplants/core.dart';
import '../controller/Cart List_controller.dart';

import 'package:get/get.dart';

class CartListView extends StatelessWidget {
  const CartListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartListController>(
      init: CartListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
              title: const Text("Cart"),
              backgroundColor: Color(0xff54805A),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    icon: const Icon(
                      MdiIcons.delete,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "Delete all",
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEBDD4F)),
                    onPressed: () => controller.deleteAll(),
                  ),
                ),
              ]),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.all(20),
            height: 90.0,
            margin: const EdgeInsets.only(
              bottom: 80.0,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffEBDD4F),
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(64.0),
                ),
              ),
              onPressed: () => Get.to(const CheckOutView()),
              child: const Text(
                "Checkout",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //body
                  SizedBox(
                    height: 400.0,
                    child: ListView.builder(
                      itemCount: CartService.cartItems.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var myplants = CartService.cartItems[index];

                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              backgroundImage: NetworkImage(
                                myplants.photo ??
                                    "https://i.ibb.co/S32HNjD/no-image.jpg",
                              ),
                            ),
                            title: Text(myplants.plantName!),
                            subtitle: Text("\$${myplants.price}"),
                            trailing: SizedBox(
                              width: 120.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () => controller.decQty(myplants),
                                    child: Card(
                                      color: Colors.grey[800],
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "${myplants.qty}",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => controller.addQty(myplants),
                                    child: Card(
                                      color: Colors.grey[800],
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
