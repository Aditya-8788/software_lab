import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:software_lab/otp_screen.dart';
import 'package:software_lab/utils/constant.dart';

class SignupConfirmationScreen extends StatefulWidget {
  const SignupConfirmationScreen({super.key});

  @override
  State<SignupConfirmationScreen> createState() =>
      _SignupConfirmationScreenState();
}

class _SignupConfirmationScreenState extends State<SignupConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 150),
              Center(
                child: Container(
                  height: 80,
                  width: 120,
                  child: SvgPicture.asset("assets/images/conform.svg"),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "You’re all done!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Be Vietnam",
                  color: Constant.primary_text,
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  "Hang tight!  We are currently reviewing your account and will follow up with you in 2-3 business days. In the meantime, you can setup your inventory.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Be Vietnam",
                    color: const Color.fromARGB(75, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 350),
              SizedBox(
                height: 52,
                width: 330,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constant.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(117),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Got it!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Be Vietnam",
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
