import 'package:finalproject/core/utilities/fonts.dart';
import 'package:finalproject/features/on_boarding/data/on_boarding_model.dart';
import 'package:finalproject/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/core/utilities/screens.dart' as screens;

import '../../../../core/utilities/paint.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel model;
  const OnBoardingItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            model.image,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.067,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 5),
          child: Text(
            model.title,
            style: MyFonts.textStyle24,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.009,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 5),
          child: Text(
            model.description,
            style: MyFonts.textStyle14,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.122,
              left: MediaQuery.of(context).size.width * 0.8012),
          child: ProgressButton(
              onNext: () {
                if (model.size == 100) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, screens.loginScreen, (route) => false);
                } else {
                  OnBoardingCubit.get(context).nextPage();
                }
              },
              num4: model.size),
        )
      ],
    );
  }
}
