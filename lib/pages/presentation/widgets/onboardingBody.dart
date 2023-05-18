import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../welcome.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  // void initState() {
  //   pageController = PageController(initialPage: 0)
  //     ..addListener(() {
  //       setState(() {});
  //     });
  // }
  void initState() {
    super.initState();
    _pageController.addListener(_updateCurrentPage);
  }

  @override
  void dispose() {
    _pageController.removeListener(_updateCurrentPage);
    super.dispose();
  }

  void _updateCurrentPage() {
    setState(() {
      _currentPage = _pageController.page?.round() ?? 0;
    });
  }

  void _goToNextPage() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 175,
                  ),
                  Image.asset('assets/image_3.png'),
                  Text(
                    "Online Store",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      color: const Color(0xff2f2e41),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Explore more furnitures and designs",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: const Color(0xff78787c),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 138,
                  ),
                  Image.asset('assets/image_2.png'),
                  Text(
                    "Reality Experience",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      color: const Color(0xff2f2e41),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Try out our augmented reality experience",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: const Color(0xff78787c),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 290,
                  ),
                  Image.asset('assets/image_4.png'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Delivery Arrived",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      color: const Color(0xff2f2e41),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Order is arrived at your Place",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: const Color(0xff78787c),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 150,
              child: DotsIndicator(
                  dotsCount: 3,
                  position: _currentPage,
                  decorator: DotsDecorator(
                      spacing: const EdgeInsets.all(15.0),
                      size: Size.square(15.0),
                      activeSize: Size.square(15.0),
                      color: Colors.transparent,
                      activeColor: Color(0xFF145F74),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Color(0xFF145F74)),
                      )))),
          Visibility(
            visible: _currentPage == 2 ? false : true,
            child: Positioned(
              top: MediaQuery.of(context).size.height * .1,
              right: 32,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome()),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontFamily: 'Poopins',
                      fontSize: 14,
                      color: const Color(0xff898989)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          _currentPage == 2
              ? Positioned(
                  bottom: 80,
                  left: 60,
                  right: 60,
                  child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Welcome()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 50, 95, 116)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 24),
                      )),
                )
              : Positioned(
                  bottom: 80,
                  left: 100,
                  right: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        _goToNextPage();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 50, 95, 116)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 24),
                      )),
                )
        ],
      ),
    );
  }
}
