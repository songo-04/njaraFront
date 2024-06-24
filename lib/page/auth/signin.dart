// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:njarafront/constant/color.dart';
import 'package:njarafront/controller/navigation/simpleNavigation.dart';
import 'package:njarafront/page/auth/signup.dart';
import 'package:njarafront/page/tabs/tabs.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final TextEditingController _user_email = TextEditingController();
  final TextEditingController _user_password = TextEditingController();
//  final GlobalKey _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: bgColor,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Login to your account',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 14),
              _inputUserEmail(),
              _inputUserPassword(),
              _signInBtn(context),
              const Text(
                'or',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              _signUpBtn(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputUserEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: _user_email,
        decoration: const InputDecoration(
          filled: true,
          fillColor: secondaryColor,
          hintText: 'User email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            gapPadding: 0,
          ),
        ),
      ),
    );
  }

  Widget _inputUserPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: _user_password,
        decoration: const InputDecoration(
          filled: true,
          fillColor: secondaryColor,
          hintText: 'Password',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            gapPadding: 0,
          ),
        ),
      ),
    );
  }

  Widget _signInBtn(BuildContext context) {
    return InkWell(
      onTap: () {
        simpleNavigation(context, TabsPage());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(4)),
        child: const Center(
          child: Text(
            'Sign in',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Widget _signUpBtn(BuildContext context) {
    return GestureDetector(
      onTap: () => simpleNavigation(context, SignUp()),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Center(
          child: Text(
            'Sign up',
            style: TextStyle(
              color: mainColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
