// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:njarafront/constant/color.dart';
import 'package:njarafront/controller/navigation/replaceNavigation.dart';
import 'package:njarafront/page/auth/signin.dart';

class LeadingPage extends StatefulWidget {
  const LeadingPage({super.key});

  @override
  State<LeadingPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LeadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      replaceNavigation(context, SignIn());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'task'.toUpperCase(),
              style: const TextStyle(
                color: mainColor,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'app'.toUpperCase(),
              style: const TextStyle(
                color: primaryColor,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
