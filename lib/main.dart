import 'package:finalproject/core/utilities/app_router.dart';
import 'package:finalproject/core/utilities/dialog.dart';
import 'package:finalproject/core/widgets/custom_%20two_options_tab_bar_buttons.dart';
import 'package:finalproject/core/widgets/custom_circular_button.dart';
import 'package:finalproject/core/widgets/custom_dialog_buttons.dart';
import 'package:finalproject/core/widgets/custom_dialog_description.dart';
import 'package:finalproject/core/widgets/custom_primary_button.dart';
import 'package:flutter/material.dart';

import 'core/widgets/custom_tab_bar_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}

/*
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CircularButton(
              pressAction: () {},
              icon: Icons.save,
            ),
            PrimaryButton(text: 'Save', pressAction: () {}),
            TabBarButton(
              text: 'add',
              pressAction: () {},
            ),
            TwoOptionsTabBar(
                text: 'as',
                pressAction: () {
                  showDialog(
                      context: context,
                      builder: (context) => const CustomDialogButtons(
                            text: 'Sheet Report is Being Downloaded',
                            image: 'assets/images/Close Square.png',
                            action: 'Ok',
                          ));
                })
          ],
        ),
      ),
    );
  }
}
*/
