import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Profile.dart';


class GetUserName extends StatelessWidget {
  final String documentId;

  const GetUserName({super.key, required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 11,
              ),
              Text(
                "Phone: ${data['phone']}",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                "Address: ${data['address']}",
                style: TextStyle(fontSize: 17),
              ),
            ],
          );
        }

        return Text("loading");
      },
    );
  }
}

class GetFullname extends StatefulWidget {
  final String documentId;
  final Color colour;

  const GetFullname(
      {super.key, required this.documentId, required this.colour});

  @override
  State<GetFullname> createState() => _GetFullnameState();
}

class _GetFullnameState extends State<GetFullname> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(widget.documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text("${data['full_name']}",
                  style: TextStyle(
                      fontSize: 20,
                      color: widget.colour,
                      fontWeight: FontWeight.bold)),
            ],
          );
        }

        return Text("loading");
      },
    );
  }
}

class GetUserImage extends StatefulWidget {
  final String documentId;
  final double size;

  const GetUserImage({super.key, required this.documentId, required this.size});

  @override
  State<GetUserImage> createState() => _GetUserImageState();
}

class _GetUserImageState extends State<GetUserImage> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(widget.documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return CircleAvatar(
            backgroundColor: Color.fromARGB(255, 225, 225, 225),
            radius: widget.size,
            // backgroundImage: AssetImage("assets/img/avatar.png"),
            backgroundImage: NetworkImage("${data['image']}"),
          );
        }

        return Text("loading");
      },
    );
  }
}

class Admin extends StatelessWidget {
  final String documentId;

  const Admin({super.key, required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          if (data['role'] == "admin") {
            return ListTile(
              leading: Icon(Icons.admin_panel_settings, color: Colors.black),
              title: const Text('Admin',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => Adminn()),
                // );
              },
            );
          } else {
            return ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: const Text('Profile',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AbadyApp()),
                );
              },
            );
          }
        }

        return SizedBox.shrink();
      },
    );
  }
}
