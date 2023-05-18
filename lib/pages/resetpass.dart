import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Shared/snackbar.dart';
import 'package:flutter_application_1/pages/signup.dart';

class reset extends StatefulWidget {
  const reset ({super.key});

  @override
  State<reset> createState() => _resetState();
}

class _resetState extends State<reset> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  resetpassword() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 50, 95, 116),
            ),
          );
        });
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: EmailController.text);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, 'Erorr ${e.toString()}');
    }
    if (!mounted) return;
    Navigator.pop(context);
  }

  bool VisablePass = true;
  void dispose() {
    // TODO: implement dispose
    EmailController.dispose();
    PasswordController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  bool isPassword8Char = false;
  bool isPasswordHas1Number = false;
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasSpecialCharacters = false;

  onPasswordChanged(String password) {
    isPassword8Char = false;
    isPasswordHas1Number = false;
    hasUppercase = false;
    hasLowercase = false;
    hasSpecialCharacters = false;
    setState(() {
      if (password.contains(RegExp(r'.{8,}'))) {
        isPassword8Char = true;
      }

      if (password.contains(RegExp(r'[0-9]'))) {
        isPasswordHas1Number = true;
      }

      if (password.contains(RegExp(r'[A-Z]'))) {
        hasUppercase = true;
      }

      if (password.contains(RegExp(r'[a-z]'))) {
        hasLowercase = true;
      }

      if (password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        hasSpecialCharacters = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/Background.jpg',
              color: Colors.white.withOpacity(0.7),
              colorBlendMode: BlendMode.modulate,
              fit: BoxFit.fitHeight,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Create New Password',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Your New Password Must Be '
                        'Diffrent From The Previuos Password '),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextFormField(
                    onChanged: (value) {
                      onPasswordChanged(value);
                    },
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: PasswordController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Enter paswword',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      suffix: IconButton(
                        iconSize: 20,
                        padding: EdgeInsets.only(top: 20),
                        onPressed: () {
                          setState(() {
                            VisablePass = !VisablePass;
                          });
                        },
                        icon: VisablePass
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextFormField(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) {
                      onPasswordChanged(value);
                    },
                    controller: PasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Pssword',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      suffix: IconButton(
                        iconSize: 20,
                        padding: EdgeInsets.only(top: 20),
                        onPressed: () {
                          setState(() {
                            VisablePass = !VisablePass;
                          });
                        },
                        icon: VisablePass
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Reset Password'),
                  style: ButtonStyle(
                      maximumSize:
                          MaterialStateProperty.all<Size>(Size.infinite),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
