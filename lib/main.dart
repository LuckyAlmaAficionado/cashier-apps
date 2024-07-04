import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

GetMaterialApp MyApp() {
  return GetMaterialApp(
    title: "Application",
    theme: ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
        titleTextStyle: GoogleFonts.sourceSans3(
          fontSize: 16,
        ),
      ),
    ),
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  );
}
