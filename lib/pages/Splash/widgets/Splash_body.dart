import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/presentation/onboardingView.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with TickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/Loading.png",
              ),
              fit: BoxFit.cover)),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: fadingAnimation!,
            builder: (context, _) => Opacity(
              opacity: fadingAnimation?.value,
              child: Text(
                "E f r s h l y",
                style: GoogleFonts.lacquer(
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                    height: 1,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 250,
          )
        ],
      ),
    );
  }

  void goToNextView() {
    try {
      Future.delayed(Duration(seconds: 5), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnBoardingView()),
        );
        // Get.to(OnBoardingView(), transition: Transition.fade);
      });
    } catch (e, stackTrace) {
      print('An error occurred: $e');
      print('Stack trace: $stackTrace');
      // Handle the error here
    }
  }
}
