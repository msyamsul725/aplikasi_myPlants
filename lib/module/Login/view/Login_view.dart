import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/Login_controller.dart';

class LoginAbsenView extends StatelessWidget {
  const LoginAbsenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginAbsenController>(
      init: LoginAbsenController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 200.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //body
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 60.0,
                        width: 340.0,
                        child: TextField(
                          controller: controller.emailID,
                          autofocus: true,
                          style: TextStyle(
                              color: Colors.blue.shade900, fontSize: 20),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              prefixIcon: const Icon(Icons.email),
                              hintText: 'Enter your email',
                              labelText: "Username",
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 60.0,
                        width: 340.0,
                        child: TextField(
                          controller: controller.passwordID,
                          autofocus: true,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              prefixIcon: const Icon(Icons.key),
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: Color.fromARGB(255, 227, 143, 17),
                              ),
                              labelText: "Password",
                              hintText: 'Enter your  Password',
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 40.0,
                        ),
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 140.0,
                              child: Text(
                                "Lupa password ?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 227, 143, 17),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 140.0,
                              child: Text(
                                "Reset disini",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 227, 143, 17),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 160.0,
                      ),
                      SizedBox(
                        height: 55.0,
                        width: 330.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 227, 143, 17),
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () => controller.loginSubmit(),
                          child: const Text("Masuk",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 40.0,
                        ),
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 160.0,
                              child: Text(
                                "Belum punya akun ?",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 140.0,
                              child: Text(
                                "Daftar Baru",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 227, 143, 17),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
