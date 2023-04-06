import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:herotask/bindings/initital_binding.dart';
import 'package:herotask/config/colors_file.dart';

import 'routes/approutes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: primaryTextColor),
        scaffoldBackgroundColor: backgroudColor,
      ),
      getPages: Approutes.routes(),
    );
  }
}
