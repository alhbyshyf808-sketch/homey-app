// ignore: file_names
import 'package:fadlapp/controller/onboarding_controller.dart';
import 'package:fadlapp/core/constant/color.dart';
import 'package:fadlapp/view/widget/onboardind/custombutton.dart';
import 'package:fadlapp/view/widget/onboardind/customslider.dart';
import 'package:fadlapp/view/widget/onboardind/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return const Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 4, child: CustomsliderOnBoarding()),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),

                  Spacer(flex: 2),

                  CustomButtonOnBoarding(), //boutton
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
