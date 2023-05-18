import 'package:flutter/material.dart';
import 'package:flutter_application_1/Blog.dart';
import 'package:flutter_application_1/Categories.dart';
import 'package:flutter_application_1/MainApp.dart';
import 'package:flutter_application_1/Shared/snackbar.dart';
import 'package:flutter_application_1/contactUs.dart';
import 'package:flutter_application_1/pages/ConfirmPayment%20copy.dart';
import 'package:flutter_application_1/pages/PaymentData.dart';
import 'package:flutter_application_1/pages/PaymentMethod%20copy.dart';
import 'package:flutter_application_1/pages/Products.dart';
import 'package:flutter_application_1/pages/Splash/Splash_view.dart';
import 'package:flutter_application_1/pages/google_signin.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/welcome.dart';
import 'package:flutter_application_1/Aboutus.dart';
import 'package:flutter_application_1/Finduremail.dart';
import 'package:flutter_application_1/checkemail.dart'; 
import 'package:flutter_application_1/creation.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/Profile.dart';
import 'package:flutter_application_1/favourites.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
      create: (context) {
        return CartItems();
      },),
      ChangeNotifierProvider(
      create: (context) {
        return GoogleSignInProvider();
      },)
      ],
      child: MaterialApp(
          home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                ));
              } else if (snapshot.hasError) {
                return showSnackBar(context, 'Erorr');
              } else if (snapshot.hasData) {
                return const Main();
              } else {
                return const SplashView();
              }
            },
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            "/MainApp": (context) => const Main(),
            "/PaymentConfirmation": (context) => const PaymentConfirmation(),
            "/PaymentMethod": (context) => const PaymentMethod(),
            "/PaymentData": (context) => const PaymentData(),
            "/Welcome": (context) => const Welcome(),
            "/Login": (context) => const Login(),
            "/signup": (context) => Signup(),
            "/welcome": (context) => const Welcome(),
            "/Finduremail": (context) => const Finduremail(),
            "/checkemail": (context) => const checkemail(),
            "/creation": (context) => const Creation(),
            "/Home": (context) => const Home(),
            "/Profile": (context) => const AbadyApp(),
            "/favourites": (context) => const favourite(),
            "/Aboutus": (context) => const Aboutus(),
            "/Blog": (context) => const Blog(),
            "/Categories": (context) => const Categories(),
            "/contactUs": (context) => const contactUs(),
          }),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
