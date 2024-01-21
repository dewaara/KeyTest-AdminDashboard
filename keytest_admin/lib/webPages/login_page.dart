import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:keytest_admin/app/config/routes/app_pages.dart';
import 'package:keytest_admin/defaultColors/default_colors.dart';
import 'package:keytest_admin/webPages/scannerone.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../app/features/dashboard/views/screens/dashboard_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool doesUserWantToSignUp = true;
  Uint8List? selectedImage;
  bool errorInPicture = false;

  final GlobalKey globalKey = GlobalKey();
  String qrData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: DefaultColors.secondaryColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [

            Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: DefaultColors.primaryColor,
                ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Card(
                    elevation: 6,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(50),
                      width: 375,
                      child: Column(
                        children: [
                          //profile image
                          Visibility(
                            // visible: doesUserWantToSignUp,
                            child: Card(
                              child: selectedImage != null
                                  ? Image.memory(selectedImage!, width: 124, height: 124, fit: BoxFit.cover,)
                                  : Image.asset("images/qr.png", width: 124, height: 124, fit: BoxFit.cover,),
                            ),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Login Id",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),
                            ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            minimumSize: const Size.fromHeight(50),
                            ),
                              onPressed: () {
                                // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                //   content: Text("Sending Message"),
                                //
                                // ));

                                ScannerOne();

                              },
                            child: const Text(
                            'Submit',
                            style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ],
                      ),



                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
