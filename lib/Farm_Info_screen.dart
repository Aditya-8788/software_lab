import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/Verification_screen.dart';
import 'package:software_lab/utils/constant.dart';

class FarmInfoScreen extends StatefulWidget {
  const FarmInfoScreen({super.key});

  @override
  State<FarmInfoScreen> createState() => _FarmInfoScreenState();
}

class _FarmInfoScreenState extends State<FarmInfoScreen> {
  final _formKey = GlobalKey<FormState>();
  final _businessNameController = TextEditingController();
  final _informalNameController = TextEditingController();
  final _streetController = TextEditingController();
  final _cityController = TextEditingController();
  final _zipController = TextEditingController();

  bool _isLoading = false;
  String? _selectedState;

  final List<String> _states = [
    'Select state',

'Arunachal Pradesh',

'Assam',

'Bihar',

'Chhattisgarh',

'Goa',

'Gujarat',

'Haryana',

'Himachal Pradesh',

'Jharkhand',

'Karnataka',

'Kerala',

'Madhya Pradesh',

'Maharashtra',

'Manipur',

'Meghalaya',

'Mizoram',

'Nagaland',

'Odisha',

'Punjab',

'Rajasthan',

'Sikkim',

'Tamil Nadu',

'Telangana',

'Tripura',

'Uttar Pradesh',

'Uttarakhand',

'West Bengal',
    // ...add remaining states as needed
  ];

  @override
  void dispose() {
    _businessNameController.dispose();
    _informalNameController.dispose();
    _streetController.dispose();
    _cityController.dispose();
    _zipController.dispose();
    super.dispose();
  }

  Future<void> _saveFarmInfo() async {
    if (!_formKey.currentState!.validate()) return;

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You must be logged in to continue.')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set(
        {
          'farmInfo': {
            'businessName': _businessNameController.text.trim(),
            'informalName': _informalNameController.text.trim(),
            'street': _streetController.text.trim(),
            'city': _cityController.text.trim(),
            'state': _selectedState,
            'zipcode': _zipController.text.trim(),
            'updatedAt': FieldValue.serverTimestamp(),
          },
        },
        SetOptions(merge: true),
      );

      if (!mounted) return;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const VerificationScreen(),
        ),
      );
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to save farm info. Please try again.')),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
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
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  "FarmerEats",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Be Vietnam",
                    color: Constant.primary_text,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Signup 2 of 4",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Be Vietnam",
                    color: Color.fromARGB(75, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Farm Info",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Be Vietnam",
                    color: Constant.primary_text,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    controller: _businessNameController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your business name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: SizedBox(
                        height: 15,
                        width: 15,
                        child: SvgPicture.asset(
                          'assets/icons/business.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      labelText: "Business Name",
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
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    controller: _informalNameController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter an informal name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: SizedBox(
                        height: 15,
                        width: 15,
                        child: SvgPicture.asset(
                          'assets/icons/informal.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      labelText: "Informal Name",
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
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    controller: _streetController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your street address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: SizedBox(
                        height: 15,
                        width: 15,
                        child: SvgPicture.asset(
                          'assets/icons/street_address.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      labelText: "Street Address",
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
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    controller: _cityController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your city';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      prefixIcon: SizedBox(
                        height: 15,
                        width: 15,
                        child: SvgPicture.asset(
                          'assets/icons/city.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      labelText: "City",
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
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: DropdownButtonFormField<String>(
                        initialValue: _selectedState ?? _states.first,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          suffixIcon: SizedBox(
                            height: 15,
                            width: 15,
                            child: SvgPicture.asset(
                              'assets/icons/state.svg',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          labelText: "State",
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
                          ),
                        ),
                        items: _states
                            .map(
                              (state) => DropdownMenuItem(
                                value: state,
                                child: Text(state),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedState = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value == _states.first) {
                            return 'Please select a state';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        controller: _zipController,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter a zipcode';
                          }
                          if (value.trim().length < 4) {
                            return 'Please enter a valid zipcode';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          labelText: "Zipcode",
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 200),
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
                    SizedBox(width: 100),
                    SizedBox(
                      height: 52,
                      width: 226,
                      child: ElevatedButton(
                        onPressed: _isLoading ? null : _saveFarmInfo,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Constant.primary,
                        ),
                        child: _isLoading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(
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
                //
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
}
