// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:provider/provider.dart';

import '../Finduremail.dart';
import 'google_signin.dart';
import 'signup.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isVisable = false;

  Widget build(BuildContext context) {
    Future<UserCredential> signInWithFacebook() async {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();
      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      // Once signed in, return the UserCredential
      return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    }

    signIn() async {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(days: 1),
          content: Text('Done.'),
          action: SnackBarAction(label: "close", onPressed: () {}),
          backgroundColor: Color.fromARGB(255, 32, 32, 32),
        ));
        return const Login();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(days: 1),
            content: Text('No user found for that email.'),
            action: SnackBarAction(label: "close", onPressed: () {}),
            backgroundColor: Colors.red,
          ));
          print("The password provided is too weak.");
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(days: 1),
            content: Text('Wrong password provided for that user.'),
            action: SnackBarAction(label: "close", onPressed: () {}),
            backgroundColor: Colors.red,
          ));
        }
      }
    }

    @override
    void dispose() {
      // TODO: implement dispose
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    @override
    final googleSignInProvider = Provider.of<GoogleSignInProvider>(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/marlon-corona-1tMc27CFUbA-unsplash.jpg",
                  ),
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.8),
                    BlendMode.modulate,
                  ),
                  fit: BoxFit.cover)),
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.369),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Center(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              Text("Log in",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 57, 57, 57),
                                      fontFamily: "myfont")),
                              SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              const BoxShadow(
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.blue[800],
                                ),
                                hintText: "Your Email :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              const BoxShadow(
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          width: 266,
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            controller: passwordController,
                            obscureText: isVisable,
                            decoration: InputDecoration(
                                suffix: IconButton(
                                  iconSize: 20,
                                  padding: EdgeInsets.only(top: 20),
                                  onPressed: () {
                                    setState(() {
                                      isVisable = !isVisable;
                                    });
                                  },
                                  icon: isVisable
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  color: Colors.blue[900],
                                ),
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.blue[800],
                                  size: 19,
                                ),
                                hintText: "Password :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Finduremail()),
                            );
                          },
                          child: Text("Forgot password?",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline)),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            await signIn();
                            if (!mounted) return;
                            // showSnackBar(context, "Done ... ");
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 50, 95, 116)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 106, vertical: 10)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27))),
                          ),
                          child: Text(
                            "login",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Don't have an account? ",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()),
                                  );
                                },
                                child: Text(" Sign up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)))
                          ],
                        ),
                        SizedBox(
                          height: 60,
                          width: 299,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Expanded(
                                  child: Divider(
                                thickness: 0.6,
                                color: Colors.white,
                              )),
                              Text(
                                "OR",
                                style: TextStyle(color: Colors.white),
                              ),
                              Expanded(
                                  child: Divider(
                                thickness: 0.6,
                                color: Colors.white,
                              )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 27),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      topRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(100),
                                    ),
                                    color: Color.fromRGBO(54, 67, 72, 99),
                                  ),
                                  child: Image.asset(
                                    "assets/images/apple_pic.png",
                                    height: 27,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              GestureDetector(
                                onTap: () {
                                  googleSignInProvider.googlelogin();
                                },
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      topRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(100),
                                    ),
                                    color: Color.fromRGBO(54, 67, 72, 99),
                                  ),
                                  child: Image.asset(
                                    "assets/images/google_pic.png",
                                    height: 27,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  await signInWithFacebook();
                                },
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(100),
                                      topRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(100),
                                      bottomRight: Radius.circular(100),
                                    ),
                                    color: Color.fromRGBO(54, 67, 72, 99),
                                  ),
                                  child: Image.asset(
                                    "assets/images/facebook_pic.png",
                                    height: 27,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
