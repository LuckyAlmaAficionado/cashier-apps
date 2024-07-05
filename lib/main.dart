import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
  runApp(MyApp());
}

GetMaterialApp MyApp() {
  return GetMaterialApp(
    title: "Cashier App",
    theme: ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: GoogleFonts.sourceSans3(
          color: Colors.black,
          fontSize: 16,
        ),
        centerTitle: false,
      ),
    ),
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  );
}
