import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:software_lab/login_screen.dart';
import 'package:software_lab/utils/constant.dart';

class SignupConfirmationScreen extends StatefulWidget {
  const SignupConfirmationScreen({super.key});

  @override
  State<SignupConfirmationScreen> createState() =>
      _SignupConfirmationScreenState();
}

class _SignupConfirmationScreenState extends State<SignupConfirmationScreen> {
  bool _isSaving = false;

  Future<void> _completeSignup() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please login again.')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
      return;
    }

    setState(() {
      _isSaving = true;
    });

    try {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set(
        {
          'signupCompleted': true,
          'signupCompletedAt': DateTime.now().toUtc().toIso8601String(),
        },
        SetOptions(merge: true),
      );

      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to complete signup. Please try again.')),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                  onPressed: _isSaving ? null : _completeSignup,
                  child: _isSaving
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : Text(
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
