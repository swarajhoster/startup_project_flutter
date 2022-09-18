import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:starter_project_flutter/constants/themes/color.dart';
import 'package:starter_project_flutter/constants/variables.dart';
import 'package:starter_project_flutter/features/home/screens/home_screen.dart';
import 'package:starter_project_flutter/features/onboard/screen/onboarding_screen.dart';
import 'package:starter_project_flutter/routes/routes.dart';
import 'package:starter_project_flutter/routes/screen_bindings.dart';

import 'package:starter_project_flutter/utils/utils.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    checkNet();
    debugPrint("App Re-build");
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Starter Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: kPrimaryColor,
        ),
        appBarTheme: const AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      getPages: getPages(),
      initialBinding: ScreenBindings(),
      home: isLoggedIn ? const HomeScreen() : const OnBoardingScreen(),
    );
  }
}
