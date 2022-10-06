import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../controller/Dashboard_controller.dart';

import 'package:get/get.dart';

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
                      return Container(
                        width: 360.0,
                        height: 360.0,
                        child: ListView.builder(
                          itemCount: data.docs.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            return Container(
                              width: 360.0,
                              height: 360.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
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
                                                decoration: const BoxDecoration(
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
                                                    Container(
                                                      height: 60.0,
                                                      width: 120.0,
                                                      child: Text(
                                                        item["plant_name"],
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
                                                      margin:
                                                          const EdgeInsets.only(
                                                        right: 30.0,
                                                      ),
                                                      child: Text(
                                                        "\$ ${item["price"]}.00  ",
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
                                                      margin:
                                                          const EdgeInsets.only(
                                                        right: 66.0,
                                                      ),
                                                      width: 60.0,
                                                      height: 40.0,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Icon(
                                                            Icons.star,
                                                            size: 24.0,
                                                            color:
                                                                Colors.orange,
                                                          ),
                                                          Text(
                                                            "${item["rating"]}",
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white,
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
                                                    size: 32.0,
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
                                ],
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
                        width: 360.0,
                        height: 220.0,
                        child: ListView.builder(
                          itemCount: data.docs.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            return Container(
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
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 120.0,
                                    ),
                                    height: 140,
                                    width: 140.0,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 41, 177, 59),
                                          blurRadius: 100,
                                          offset: Offset(0, 32),
                                        ),
                                      ],
                                      color: Colors.blueGrey[200],
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(24.0),
                                      ),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        top: 60.0,
                                        left: 20.0,
                                      ),
                                      child: Text(
                                        item["plant_name"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                    ),
                                    width: 130.0,
                                    height: 150.0,
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
