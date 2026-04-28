import 'package:fadlapp/core/constant/routes.dart';
import 'package:fadlapp/core/localization/changelocal.dart';
import 'package:fadlapp/view/screen/language/custombutomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 20),
            Custombutomlang(
              textbutton: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onboarding);
              },
            ),

            Custombutomlang(
              textbutton: "en",
              onPressed: () {
                controller.changeLang("en");

                Get.toNamed(AppRoute.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
