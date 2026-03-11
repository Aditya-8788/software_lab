import 'package:flutter/material.dart';
import 'package:software_lab/reset_password_screen.dart';
import 'package:software_lab/utils/constant.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _otpState();
}

class _otpState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  "FarmerEats",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Be Vietnam",
                    color: Constant.primary_text,
                  ),
                ),
                SizedBox(height: 90),
                Text(
                  "Verify OTP",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Be Vietnam",
                    color: Constant.primary_text,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Remember your pasword?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Be Vietnam",
                        color: Constant.primary_text,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Be Vietnam",
                          color: Constant.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 59,
                      width: 58,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 221, 221, 221),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 59,
                      width: 58,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 221, 221, 221),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 59,
                      width: 58,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 221, 221, 221),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 59,
                      width: 58,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 221, 221, 221),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 59,
                      width: 58,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 221, 221, 221),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 50,
                //   width: double.infinity,
                //   child: TextField(
                //     decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //         borderSide: BorderSide(color: Colors.grey.shade300),
                //       ),
                //       prefixIcon: Icon(Icons.phone_outlined),
                //       labelText: "Phone Number",
                //       labelStyle: TextStyle(
                //         fontSize: 14,
                //         fontWeight: FontWeight.w400,
                //         fontFamily: "Be Vietnam",
                //         color: const Color.fromARGB(71, 38, 28, 18),
                //       ),
                //       filled: true,
                //       fillColor: const Color.fromARGB(255, 221, 221, 221),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //         // borderSide: BorderSide(color: Colors.grey.shade300),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 25),
                // SizedBox(
                //   height: 50,
                //   child: TextField(
                //     decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //         borderSide: BorderSide(color: Colors.grey.shade300),
                //       ),
                //       prefixIcon: Icon(Icons.lock_outlined),
                //       suffixIcon: TextButton(
                //         onPressed: () {},
                //         child: Text(
                //           "Forget?",
                //           style: TextStyle(
                //             fontSize: 14,
                //             fontWeight: FontWeight.w400,
                //             fontFamily: "Be Vietnam",
                //             color: Constant.primary,
                //           ),
                //         ),
                //       ),
                //       labelText: "Password",
                //       labelStyle: TextStyle(
                //         fontSize: 14,
                //         fontWeight: FontWeight.w400,
                //         fontFamily: "Be Vietnam",
                //         color: const Color.fromARGB(71, 38, 28, 18),
                //       ),
                //       filled: true,
                //       fillColor: const Color.fromARGB(255, 221, 221, 221),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 52,
                    width: 330,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Constant.primary,
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Be Vietnam",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Be Vietnam",
                      color: const Color.fromARGB(255, 0, 0, 0),
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                    ),
                  ),
                ),
                // SizedBox(height: 30),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Container(
                //       height: 52,
                //       width: 96,
                //       decoration: BoxDecoration(
                //         border: Border.all(color: Colors.grey.shade300),
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //       alignment: Alignment.center,
                //       child: SvgPicture.asset("assets/images/google.svg"),
                //     ),
                //     Container(
                //       height: 52,
                //       width: 96,
                //       decoration: BoxDecoration(
                //         border: Border.all(color: Colors.grey.shade300),
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //       alignment: Alignment.center,
                //       child: SvgPicture.asset("assets/images/apple.svg"),
                //     ),
                //     Container(
                //       height: 52,
                //       width: 96,
                //       decoration: BoxDecoration(
                //         border: Border.all(color: Colors.grey.shade300),
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //       alignment: Alignment.center,
                //       child: SvgPicture.asset("assets/images/facebook.svg"),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
