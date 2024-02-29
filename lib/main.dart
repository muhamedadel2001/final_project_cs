
import 'package:finalproject/core/utilities/responsive.dart';
import 'package:finalproject/core/widgets/congrats.dart';
import 'package:finalproject/core/widgets/loading.dart';
import 'package:finalproject/core/widgets/page_not_found.dart';
import 'package:finalproject/core/widgets/success.dart';
import 'package:flutter/material.dart';
import 'core/utilities/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ResponsiveCalc.getInstance(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter().onGenerateRoute,
     // home: const LoadingScreen(),
    );
  }
}




