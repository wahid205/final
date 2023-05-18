import 'package:flutter/material.dart';

class checkemail extends StatefulWidget {
  const checkemail({super.key});

  @override
  State<checkemail> createState() => _checkemailState();
}

class _checkemailState extends State<checkemail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          child: Image.asset(
            'assets/Background.jpg', 
            color: Colors.white.withOpacity(0.7), colorBlendMode: BlendMode.modulate, 
            fit: BoxFit.fitHeight,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                   color: Color.fromARGB(255,40,51,57).withOpacity(0.8),
                   borderRadius: BorderRadius.circular(15)
                  ),
                 height: 100,
                 width: 100,
                 padding: EdgeInsets.all(20),
                  
                  child: Image.asset(
                   'assets/envelope.png',
                  color: Color.fromARGB(255,14	,52,	65),
                  ),
                ),
                Text(
                  'Check your mail',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                    'We have sent a password recover instructions to your email',
                    style: TextStyle(fontWeight: FontWeight.bold), ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(0.6),
                  ),
                  child: Column(children: [
                    Text('Did not Recieve the email? check your spam filter', style: TextStyle(fontWeight: FontWeight.bold),),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'or try another email address',
                          style: TextStyle(color: Color.fromARGB(255, 94,139,155,),fontWeight: FontWeight.bold),
                        ))
                  ]),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
