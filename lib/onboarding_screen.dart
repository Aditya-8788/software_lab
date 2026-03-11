import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:software_lab/login_screen.dart';
import 'package:software_lab/utils/constant.dart';

List<Map<String, String>> onboardingImages = [
  {
    "image": "assets/images/onboarding_bg_1.svg",
    "title": "Quality",
    "description":
        "Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain.",
    "color": "tertiary",
  },
  {
    "image": "assets/images/onboarding_bg_2.svg",
    "title": "Convenient",
    "description":
        "Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.",
    "color": "primary",
  },
  {
    "image": "assets/images/onboarding_bg_3.svg",
    "title": "Local",
    "description":
        "We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time. ",
    "color": "secondary",
  },
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  Color get _currentColor {
    switch (onboardingImages[_currentIndex]["color"]) {
      case "primary":
        return Constant.primary;
      case "secondary":
        return Constant.secondary;
      case "tertiary":
      default:
        return Constant.tertiary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheet(
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(52)),
        ),
        onClosing: () {},
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(52),
                topRight: Radius.circular(52),
              ),
            ),
            width: double.infinity,
            height: 422,
            child: Column(
              mainAxisSize: MainAxisSize.min, // 🔑 makes height dynamic
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      onboardingImages[_currentIndex]["title"]!,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Be Vietnam",
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      onboardingImages[_currentIndex]["description"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Be Vietnam",
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingImages.length,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          height: 8,
                          width: _currentIndex == index ? 16 : 8,
                          decoration: BoxDecoration(
                            color: _currentIndex == index
                                ? const Color.fromARGB(255, 0, 0, 0)
                                : const Color.fromARGB(255, 1, 1, 1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: 236,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_currentIndex < onboardingImages.length - 1) {
                            setState(() {
                              _currentIndex++;
                            });
                          } else {
                            // Optionally navigate to login
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _currentColor,
                        ),
                        child: const Text(
                          "Join the movement!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Be Vietnam",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Constant.primary_text,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Be Vietnam",
                          decoration: TextDecoration.underline,
                          decorationColor: Constant.primary_text,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: _currentColor,
      body: SafeArea(
        child: Column(
          children: [
            // SizedBox(height: 32),
            Center(
              child: SvgPicture.asset(
                onboardingImages[_currentIndex]["image"]!,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
