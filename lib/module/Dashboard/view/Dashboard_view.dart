import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:myplants/core.dart';

import 'package:myplants/models/myplants/myplants.dart';
import '../controller/Dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.grey[350],
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 100.0,
                    child: SizedBox(
                      height: 100.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.developer_board,
                            size: 24.0,
                          ),
                          const Text(
                            "Our Shop",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          const CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            initialValue: null,
                            decoration: const InputDecoration.collapsed(
                              filled: true,
                              fillColor: Colors.transparent,
                              hintText: "Search",
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("myplants")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      if (snapshot.data!.docs.isEmpty) {
                        return const Text("No Data");
                      }
                      final data = snapshot.data!;
                      return SizedBox(
                        width: 360.0,
                        height: 360.0,
                        child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item =
                                (snapshot.data!.docs[index].data()
                                    as Map<String, dynamic>);
                            item["id"] = snapshot.data!.docs[index].id;
                            var myplants = Myplants.fromJson(item);

                            return InkWell(
                              onTap: () =>
                                  Get.to(ProductDetailView(item: myplants)),
                              child: Container(
                                width: 360.0,
                                height: 360.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          left: 80.0,
                                        ),
                                        width: 280.0,
                                        height: 280.0,
                                        // ignore: prefer_const_constructors
                                        decoration: BoxDecoration(
                                          boxShadow: const [],
                                          color: const Color(0xff54805A),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                              24.0,
                                            ),
                                          ),
                                        ),
                                        child: Stack(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Column(
                                              children: [
                                                const SizedBox(
                                                  height: 40.0,
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                    left: 110.0,
                                                  ),
                                                  width: 120.0,
                                                  height: 180.0,
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        16.0,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      const SizedBox(
                                                        height: 20.0,
                                                      ),
                                                      SizedBox(
                                                        height: 60.0,
                                                        width: 120.0,
                                                        child: Text(
                                                          myplants.plantName ??
                                                              "_",
                                                          // ignore: prefer_const_constructors
                                                          style: TextStyle(
                                                            fontSize: 24.0,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 20.0,
                                                      ),
                                                      Container(
                                                        width: 260.0,
                                                        margin: const EdgeInsets
                                                            .only(
                                                          right: 30.0,
                                                        ),
                                                        child: Text(
                                                          "\$ ${myplants.price}",
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                          right: 66.0,
                                                        ),
                                                        width: 60.0,
                                                        height: 40.0,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              size: 24.0,
                                                              color:
                                                                  Colors.orange,
                                                            ),
                                                            Text(
                                                              "${myplants.rating}",
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                    left: 220.0,
                                                  ),
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.add_box,
                                                      size: 36.0,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 220,
                                      height: 280.0,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            16.0,
                                          ),
                                        ),
                                      ),
                                      child: Image.network(
                                        myplants.photo ??
                                            "https://i.ibb.co/S32HNjD/no-image.jpg"
                                                .toString(),
                                        width: 64.0,
                                        height: 64.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("myplants")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      if (snapshot.data!.docs.isEmpty) {
                        return const Text("No Data");
                      }
                      final data = snapshot.data!;
                      return SizedBox(
                        height: 260.0,
                        child: ListView.builder(
                          itemCount: data.docs.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            return Container(
                              margin: const EdgeInsets.only(
                                right: 20.0,
                              ),
                              width: 160.0,
                              height: 220.0,
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
                                      const SizedBox(
                                        height: 80.0,
                                      ),
                                      Container(
                                        height: 80.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff54805A),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(12.0),
                                            topRight: Radius.circular(12.0),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 60.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(12.0),
                                            bottomRight: Radius.circular(12.0),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Container(
                                              height: 20.0,
                                              child: Text(
                                                item["plant_name"],
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              height: 20.0,
                                              child: SizedBox(
                                                height: 100.0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                        width: 60.0,
                                                        child: Text(
                                                          "\$ ${item["price"]}.0",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        )),
                                                    Container(
                                                      width: 60.0,
                                                      child: SizedBox(
                                                        height: 100.0,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              size: 16.0,
                                                              color:
                                                                  Colors.orange,
                                                            ),
                                                            Text(
                                                              "${item["rating"]}",
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ],
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
                                  Container(
                                    width: 140,
                                    height: 140.0,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                    child: Image.network(
                                      item["photo"],
                                      width: 64.0,
                                      height: 64.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 80.0,
                                      left: 120.0,
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.heart_broken,
                                        size: 28.0,
                                        color:
                                            Color.fromARGB(255, 237, 146, 140),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
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
