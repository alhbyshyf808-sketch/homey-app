import 'package:fadlapp/controller/onboarding_controller.dart';
import 'package:fadlapp/data/datasoure/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomsliderOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomsliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset(
            onBoardingList[i].image!,
            // width: 200,
            // height: 230,
            // fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),

          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),

          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,

              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
