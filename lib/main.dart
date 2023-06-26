import 'package:ayurvedic/src/my_app.dart';
import 'package:ayurvedic/src/provider/bottom_nav_bar_provider.dart';
import 'package:ayurvedic/src/provider/homescreen_provider.dart';
import 'package:ayurvedic/src/provider/productDetails_provider.dart';
import 'package:ayurvedic/src/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => BottomNavBarProvider(),),
            ChangeNotifierProvider(create: (context) => HomescreenProvider(),),
            ChangeNotifierProvider(create: (context) => ProductDetailsProvider(),),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Cabin',
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const MainPageBottomBar(),
          ),
        );
      },
    );
  }
}
