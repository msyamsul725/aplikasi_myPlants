import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myplants/core.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      init: WelcomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Color(0xff54805A),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 41, 177, 59),
                          blurRadius: 100,
                          offset: Offset(0, 32),
                        ),
                      ],
                    ),
                    child: Image.network(
                      "https://i.ibb.co/7NJjsvN/a.png",
                      width: 200.0,
                      height: 300.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 140.0,
                    ),
                    width: 220.0,
                    child: const Text(
                      "Find out your companing On our Plant shop",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.4,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    width: 360.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffEBDD4F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onPressed: () =>
                            Get.to(const BasicMainNavigationView()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Container(
                              margin: const EdgeInsets.only(
                                left: 20.0,
                              ),
                              // ignore: prefer_const_constructors
                              child: Text(
                                "Get Started",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 30.0,
                              color: Colors.black,
                            ),
                          ],
                        )),
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
