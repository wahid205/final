import 'package:flutter/material.dart';

class Finduremail extends StatefulWidget {
  const Finduremail({super.key});

  @override
  State<Finduremail> createState() => _FinduremailState();
}

class _FinduremailState extends State<Finduremail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/Background.jpg',
              fit: BoxFit.fitHeight,
              width: double.infinity,
              height: double.infinity,
              color: Colors.white.withOpacity(0.7), colorBlendMode: BlendMode.modulate,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forget your password',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Please enter your  email address or mobile number to search  for  your account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Enter your email',
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
                      ),
                    )),
                ElevatedButton(
                  onPressed: () {},
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
