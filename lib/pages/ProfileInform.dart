import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../Home.dart';
import '../shared/getData_Firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'dart:io';

import 'ProfileEdit.dart';
import 'login.dart';

class ProfileInform extends StatefulWidget {
  ProfileInform({super.key});

  @override
  State<ProfileInform> createState() => _ProfileInformState();
}

class _ProfileInformState extends State<ProfileInform> {
  final credential = FirebaseAuth.instance.currentUser;

  CollectionReference users = FirebaseFirestore.instance.collection('Users');

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
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            color: Color.fromARGB(255, 255, 255, 255),
          )),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(8),
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Stack(children: [
              // imgPath == null?
              GetUserImage(
                documentId: credential!.uid,
                size: 71,
              )
              // : ClipOval(
              //     child: Image.file(
              //       imgPath!,
              //       width: 140,
              //       height: 140,
              //       fit: BoxFit.cover,
              //     ),
              //   ),
            ]),
            GetFullname(documentId: credential!.uid, colour: Colors.black),
            Text(
              "${credential!.email}",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileEdit()),
                    );
                  },
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 50, 95, 116),
                      shape: StadiumBorder()),
                )),
            SizedBox(
              height: 30,
            ),
            const Divider(),
            Container(
              padding: EdgeInsets.only(left: 40),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GetUserName(
                      documentId: credential!.uid,
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Created date:   ${DateFormat("MMMM d, y").format(credential!.metadata.creationTime!)}   ",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      //
                      "Last Signed In: ${DateFormat("MMMM d, y").format(credential!.metadata.lastSignInTime!)}  ",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                )
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 190,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Delete user'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const <Widget>[
                                  Text(
                                      'Are you sure want to Delete this account?'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('No'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('Yes'),
                                onPressed: () {
                                  credential!.delete();
                                  users.doc(credential!.uid).delete();
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                },
                              ),
                            ],
                          );
                        });
                  },
                  child: Row(children: [
                    Text(
                      "Delete This User",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      LineAwesomeIcons.trash,
                      color: Colors.white,
                      size: 20,
                    ),
                  ]),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 22, 22),
                      shape: StadiumBorder()),
                )),
          ]),
        ),
      ),
    );
  }
}
