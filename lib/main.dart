import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/screens/home_screen.dart';
import 'package:notes/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors().bkgrndColor,
          appBarTheme: AppBarTheme(
              backgroundColor: AppColors().bkgrndColor, elevation: 0)),
      home: const HomeScreen(),
    );
  }
}
