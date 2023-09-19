import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/Home.dart';
import 'package:foodapp/Features/Onboarding/presentation/Views/hepler/List.dart';
import 'package:foodapp/Features/Registration/presentation/views/Registrationpage.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  int Index = 0;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: opacityAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 224,
              alignment: Alignment.center,
              child: Image.asset(Onboardinglist[Index].image),
            ),
            const SizedBox(
              height: 79,
            ),
            Text(
              Onboardinglist[Index].text1,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: Text(
                Onboardinglist[Index].text2,
                style: const TextStyle(   
                  fontSize: 12,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
            const SizedBox(
              height: 104,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: const Text('Skip'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Registration(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (Index == 2) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>const Registration(),
                              ),
                            );
                          } else {
                            Index += 1;
                            controller.reset();
                            controller.forward();
                          }
                        });
                      },
                      icon: const Icon(Icons.arrow_forward,color: Colors.green,))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
