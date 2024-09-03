import 'package:bookly_app/features/constant.dart';
import 'package:bookly_app/features/splash/presentation/view/splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: Kpraimarycolor),
      home: SplashView(),
    );
  }
}
