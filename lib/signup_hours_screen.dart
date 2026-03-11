import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/signup_%20confirmation_screen.dart';
import 'package:software_lab/utils/constant.dart';

class SignupHoursScreen extends StatefulWidget {
  const SignupHoursScreen({super.key});

  @override
  State<SignupHoursScreen> createState() => _SignupHoursScreenState();
}

class _SignupHoursScreenState extends State<SignupHoursScreen> {
  int? currentDay;
  Set<int> selectedDays = {};
  Set<int> selectedTimes = {};

  List<String> days = ["M", "T", "W", "Th", "F", "S", "Su"];

  List<String> timeSlots = [
    "8:00am - 10:00am",
    "10:00am - 1:00pm",
    "1:00pm - 4:00pm",
    "4:00pm - 7:00pm",
    "7:00pm - 10:00pm",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9E4E2),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FarmerEats"),

              const SizedBox(height: 20),

              const Text("Signup 4 of 4", style: TextStyle(color: Colors.grey)),

              const SizedBox(height: 10),

              const Text(
                "Business Hours",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                "Choose the hours your farm is open for pickups. This will allow customers to order deliveries.",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 30),

              /// DAYS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(days.length, (index) {
                  Color bgColor = Colors.white;

                  if (currentDay == index) {
                    bgColor = const Color(0xffD46A4F); // orange
                  } else if (selectedDays.contains(index)) {
                    bgColor = Colors.grey; // after selected
                  }

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentDay = index;

                        selectedDays.add(index);

                        selectedTimes.clear();
                      });
                    },

                    child: Container(
                      height: 36,
                      width: 37,
                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),

                      child: Text(
                        days[index],
                        style: TextStyle(
                          color: currentDay == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 30),

              /// TIME SLOTS
              if (currentDay != null)
                Wrap(
                  spacing: 12,
                  runSpacing: 12,

                  children: List.generate(timeSlots.length, (index) {
                    bool isSelected = selectedTimes.contains(index);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedTimes.remove(index);
                          } else {
                            selectedTimes.add(index);
                          }
                        });
                      },

                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),

                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xffF2B451) // yellow
                              : const Color(0xffD9D9D9), // grey

                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Text(timeSlots[index]),
                      ),
                    );
                  }),
                ),

              const Spacer(),

              /// SIGNUP BUTTON
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/backWard_arryo.svg',
                      height: 15,
                      width: 15,
                    ),
                  ),
                  SizedBox(width: 55),
                  SizedBox(
                    height: 52,
                    width: 226,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SignupConfirmationScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Constant.primary,
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Be Vietnam",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
