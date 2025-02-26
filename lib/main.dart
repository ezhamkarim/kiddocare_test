import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kiddocare_test/src/services/services_locator.dart' show setup;

import 'src/app.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  setup();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
