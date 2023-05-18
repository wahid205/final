import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:path/path.dart' show basename;

import '../shared/getData_Firestore.dart';
import 'ProfileInform.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final credential = FirebaseAuth.instance.currentUser;
  CollectionReference users = FirebaseFirestore.instance.collection('Users');

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final fullnameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  String? imgName;

  File? imgPath;

  saveButton() async {
    if (fullnameController.text != "") {
      users.doc(credential!.uid).update({
        "full_name": fullnameController.text,
        // "email": emailController.text,
        // "phone": phoneController.text,
        // "address": addressController.text,
        // "password": passController.text,
      });
    }
    if (phoneController.text != "") {
      users.doc(credential!.uid).update({
        "phone": phoneController.text,
      });
    }
    if (addressController.text != "") {
      users.doc(credential!.uid).update({
        "address": addressController.text,
      });
    }
    final storageRef = FirebaseStorage.instance.ref("User-Images/$imgName");
    await storageRef.putFile(imgPath!);
    String url = await storageRef.getDownloadURL();
    users.doc(credential!.uid).update({
      "image": url,
    });
  }

  uploadImage2Screen(ImageSource source) async {
    final pickedImg = await ImagePicker().pickImage(source: source);
    try {
      if (pickedImg != null) {
        setState(() {
          imgPath = File(pickedImg.path);
          imgName = basename(pickedImg.path);
        });
      } else {
        print("NO img selected");
      }
    } catch (e) {
      print("Error => $e");
    }

    if (!mounted) return;
    Navigator.pop(context);
  }

  showmodel() {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(22),
          height: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  await uploadImage2Screen(ImageSource.camera);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.camera,
                      size: 30,
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      "From Camera",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              GestureDetector(
                onTap: () {
                  uploadImage2Screen(ImageSource.gallery);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.photo_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      "From Gallery",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Profile',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 54, 67, 72),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ProfileInform()),
              );
            },
            color: Color.fromARGB(255, 255, 255, 255),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Stack(children: [
              imgPath == null
                  ? GetUserImage(
                      documentId: credential!.uid,
                      size: 71,
                    )
                  : ClipOval(
                      child: Image.file(
                        imgPath!,
                        width: 140,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 81, 104, 113)),
                  child: IconButton(
                    onPressed: () {
                      showmodel();
                    },
                    icon: Icon(
                      LineAwesomeIcons.alternate_pencil,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              )
            ]),
            // const Divider(),
            Form(
                child: Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      controller: fullnameController,
                      decoration: InputDecoration(
                          label: Text("Full Name"),
                          prefixIcon: Icon(Icons.person_2_rounded),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                          prefixIconColor: Colors.black,
                          floatingLabelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)))),
                  SizedBox(
                    height: 10,
                  ),
                  // TextField(
                  //     controller: emailController,
                  //     decoration: InputDecoration(
                  //         label: Text("E-Mail"),
                  //         prefixIcon: Icon(Icons.mail),
                  //         border: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(100)),
                  //         prefixIconColor: Colors.black,
                  //         floatingLabelStyle: TextStyle(
                  //           color: Colors.black,
                  //         ),
                  //         focusedBorder: OutlineInputBorder(
                  //             borderSide:
                  //                 BorderSide(width: 2, color: Colors.black)))),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                          label: Text("Phone No."),
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                          prefixIconColor: Colors.black,
                          floatingLabelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)))),
                  SizedBox(
                    height: 10,
                  ),
                  // TextField(
                  //     controller: passController,
                  //     decoration: InputDecoration(
                  //         label: Text("Password"),
                  //         prefixIcon: Icon(Icons.lock),
                  //         border: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(100)),
                  //         prefixIconColor: Colors.black,
                  //         floatingLabelStyle: TextStyle(
                  //           color: Colors.black,
                  //         ),
                  //         focusedBorder: OutlineInputBorder(
                  //             borderSide:
                  //                 BorderSide(width: 2, color: Colors.black)))),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  TextField(
                      controller: addressController,
                      decoration: InputDecoration(
                          label: Text("Address"),
                          prefixIcon: Icon(Icons.location_city),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                          prefixIconColor: Colors.black,
                          floatingLabelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black)))),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () async {
                        await saveButton();
                        setState(() {
                          Navigator.pop(context);
                        
                        });
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 50, 95, 116),
                          shape: StadiumBorder()),
                    ),
                  )),
                ],
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
