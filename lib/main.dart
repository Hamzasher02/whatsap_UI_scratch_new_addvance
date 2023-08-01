import 'package:flutter/material.dart';
import 'package:mywhatsapp/widgets/colors.dart';
import 'package:mywhatsapp/responsivescreen/responsive.dart';
import 'package:mywhatsapp/screens/mobscreens/Mob_screen_layout.dart';
import 'package:mywhatsapp/screens/webscreens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp UI',
        theme: ThemeData.dark().copyWith(backgroundColor: backgroundColor),
        home: const Responsivescreen(
          mobileScreenLayout: MobileScreen(),
          webScreenLayout: webScreen(),
        ));
  }
}
