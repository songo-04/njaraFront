// ignore_for_file: file_names

import 'package:flutter/material.dart';

void simpleNavigation(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}
