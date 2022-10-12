import 'package:flutter/material.dart';
import 'package:myplants/models/myplants/myplants.dart';

import '../controller/ProductDetail_controller.dart';

import 'package:get/get.dart';

class ProductDetailView extends StatelessWidget {
  final Myplants item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      init: ProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xffEBDD4F),
                  radius: 24.0,
                  child: Icon(
                    Icons.shop,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2.67,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 1.6,
                            decoration: const BoxDecoration(
                              color: Color(0xff54805A),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 1.8,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Image.network(
                          item.photo ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
                          width: 64.0,
                          height: 64.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 2.4,
                          left: MediaQuery.of(context).size.width / 1.2,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffEBDD4F),
                          radius: 24.0,
                          child: Icon(
                            Icons.heart_broken_sharp,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 2,
                          left: MediaQuery.of(context).size.width / 1.22,
                        ),
                        width: 60.0,
                        height: 180.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: Colors.white24,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 60.0,
                              decoration: const BoxDecoration(
                                color: Colors.white30,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              height: 60.0,
                              child: InkWell(
                                onTap: () => controller.addQty(),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 36.0,
                                ),
                              ),
                            ),
                            Container(
                              height: 60.0,
                              child: Center(
                                child: Text(
                                  "${controller.qty}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 58.0,
                              width: 60.0,
                              decoration: const BoxDecoration(
                                color: Colors.white30,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                ),
                              ),
                              child: InkWell(
                                onTap: () => controller.decQty(),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 36.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 1.8,
                          left: MediaQuery.of(context).size.width / 20,
                        ),
                        width: 200.0,
                        height: 100.0,
                        decoration: BoxDecoration(),
                        child: Text(
                          item.plantName ?? "_",
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 400.0,
                        margin: EdgeInsets.only(
                          left: 24.0,
                          top: MediaQuery.of(context).size.height / 1.35,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Container(
                        width: 360.0,
                        margin: EdgeInsets.only(
                          left: 24.0,
                          top: MediaQuery.of(context).size.height / 1.1,
                        ),
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: 100.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 100.0,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 20.0,
                                      child: Text(
                                        "Price",
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 50.0,
                                        child: Text(
                                          "\$ ${item.price}",
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () => controller.addToCart(),
                                child: Container(
                                  height: 70.0,
                                  width: 200.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffEBDD4F),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Add to Cart",
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
