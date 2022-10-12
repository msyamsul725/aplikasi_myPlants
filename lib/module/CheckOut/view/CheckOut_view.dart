import 'package:flutter/material.dart';
import '../../../service/cart_service.dart';
import '../controller/CheckOut_controller.dart';

import 'package:get/get.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutController>(
      init: CheckOutController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff54805A),
            title: const Text("CheckOut"),
          ),
          bottomNavigationBar: SizedBox(
            child: Wrap(
              children: [
                Card(
                  child: ListTile(
                    title: Text("Total"),
                    subtitle: Text(
                      "\$ ${CartService.total}",
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: ElevatedButton.icon(
                      icon: const Icon(Icons.check),
                      label: const Text("Buy"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () => controller.saveOrder(),
                    ),
                  ),
                ),
              ],
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
                        double total = myplants.qty! * myplants.price!;

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
                            subtitle:
                                Text("${myplants.qty} x \$ ${myplants.price}"),
                            trailing: SizedBox(
                              width: 120.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "$total",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
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
