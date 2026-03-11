import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:software_lab/forget_password.dart';
import 'package:software_lab/utils/constant.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                SizedBox(height: 40),
                Text(
                  "Signup 1 of 4",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Be Vietnam",
                    color: Color.fromARGB(75, 0, 0, 0),
                  ),
                ),
                Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Be Vietnam",
                    color: Constant.primary_text,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 52,
                      width: 96,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/images/google.svg"),
                    ),
                    Container(
                      height: 52,
                      width: 96,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/images/apple.svg"),
                    ),
                    Container(
                      height: 52,
                      width: 96,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/images/facebook.svg"),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "or sign in with",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Be Vietnam",
                      color: const Color.fromARGB(75, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Be Vietnam",
                        color: const Color.fromARGB(71, 38, 28, 18),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 221, 221, 221),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        // borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Be Vietnam",
                        color: const Color.fromARGB(71, 38, 28, 18),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 221, 221, 221),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        // borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Be Vietnam",
                        color: const Color.fromARGB(71, 38, 28, 18),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 221, 221, 221),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        // borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Be Vietnam",
                        color: const Color.fromARGB(71, 38, 28, 18),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 221, 221, 221),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        // borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email Address",
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Be Vietnam",
                        color: const Color.fromARGB(71, 38, 28, 18),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 221, 221, 221),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        // borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    height: 52,
                    width: 330,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Constant.primary,
                      ),
                      child: Text(
                        "Login",
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
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Be Vietnam",
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
