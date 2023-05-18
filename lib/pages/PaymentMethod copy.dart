import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Payment',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 54, 67, 72),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pushNamed(context, "/PaymentConfirmation");
              },
              color: Color.fromARGB(255, 255, 255, 255),
            )),
        body: Column(
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(245, 245, 245, 1)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(0, 40, 0, 40)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/PaymentData");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Icon(
                        Icons.credit_card,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(100, 0, 140, 0),
                      child: Text(
                        "VISA",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ],
                )),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 2,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(245, 245, 245, 1)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(0, 40, 0, 40)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/PaymentData");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Icon(
                        Icons.credit_card,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(70, 0, 110, 0),
                      child: Text(
                        "MasterCard",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ],
                )),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 2,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(245, 245, 245, 1)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(0, 40, 0, 40)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Icon(
                        Icons.credit_card,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(52, 0, 100, 0),
                      child: Text(
                        "PayOnDelivery",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ],
                )),
            Container(
              color: Color.fromARGB(255, 0, 0, 0),
              width: double.infinity,
              height: 2,
            ),
          ],
        ));
  }
}
