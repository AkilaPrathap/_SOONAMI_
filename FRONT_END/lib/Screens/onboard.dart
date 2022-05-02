import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sdgp_ui/Screens/splash.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Onboarding Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _OnboardingPageState();
}
class _OnboardingPageState extends State<MyHomePage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index){
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50,100,50,0),
                  child: Column(
                    children: [
                      Lottie.asset("lotties/welcome.json"),
                      const SizedBox(height: 30,),
                      const Text(
                        'Welcome To click posture!',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Serif'
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text(
                        'Identify whether your workout posture is correct or not within minutes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        )
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50,100,50,0),
                  child: Column(
                    children: [
                      Lottie.asset("lotties/workout.json"),
                      const SizedBox(height: 30,),
                      const Text(
                        '100+ Exercises!',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Serif'
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text(
                          'Over 100 exercises under main muscle groups (Arms, Legs, Shoulders)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          )
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50,100,50,0),
                  child: Column(
                    children:  [
                      Lottie.asset("lotties/offline.json"),
                      const SizedBox(height: 30,),
                      const Text(
                        'No Internet? ',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Serif'
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text(
                          "No Internet? Make sure you are always connected to internet when using click posture.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          )
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomSheet: isLastPage
        ?Padding(
          padding: const EdgeInsets.fromLTRB(90.0,0,90.0,0),
          child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
                primary: Colors.white,
            backgroundColor: Colors.teal.shade700,
            minimumSize:  Size.fromHeight(75)
          ),
            onPressed: () async{
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context)=> Splash()),
            );
            },
            child: const Text(
              'Get Started',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
              ),
            )
      ),
        ):
        Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
              controller.jumpToPage(2);
            },
                child: Text('SKIP')
            ),
            Center(
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    spacing: 16,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.teal.shade700,
                  ),
                onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn
                ),
              ),
            ),
            TextButton(
                onPressed: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
                },
                child: Text('NEXT')
            ),
          ],
        ),
      ),
    );
  }
}
