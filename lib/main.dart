import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fadlapp/core/constant/color.dart';
import 'package:fadlapp/core/localization/changelocal.dart';
import 'package:fadlapp/core/localization/translation.dart';
import 'package:fadlapp/core/services/servsces.dart';
import 'package:fadlapp/routes.dart';
import 'package:fadlapp/view/screen/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialSerices(); // تأكد أن اسم الدالة صحيح
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ربط الكونترولر الخاص باللغة
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // 🌍 الترجمة
      translations: Mytranslation(),
      locale: controller.language,

      // 🎨 الثيم
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.black,
          ),

          headlineSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: AppColor.black,
          ),
          bodyLarge: TextStyle(
            height: 3,
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // 📱 الصفحة الأولى
      home: const Language(),

      // 🧭 الراوتات
      routes: routes,
    );
  }
}
