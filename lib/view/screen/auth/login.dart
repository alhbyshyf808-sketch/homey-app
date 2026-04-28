import 'package:fadlapp/core/constant/color.dart';
import 'package:fadlapp/view/widget/auth/custombutomauth.dart';
import 'package:fadlapp/view/widget/auth/customtextbodyauth.dart';
import 'package:fadlapp/view/widget/auth/customtextformauth.dart';
import 'package:fadlapp/view/widget/auth/customtexttitleauth.dart';
import 'package:fadlapp/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 219, 243, 255),
        elevation: 0.0,

        title: Text(
          'sing in',
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const LogoAuth(),

            const CustomTextTitleAuth(text: "Welcom to my bissinsMan"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
              text:
                  "يرجي ادخال الايميل مع الباسورد او الدخول عبر منصات التواصل الاجتماعي",
            ),
            const SizedBox(height: 15),
            const CostomTextFormAuth(
              hinttext: 'Enter Your Email',
              labletext: 'Email',
              iconData: Icons.email_outlined,
              //mycontroller: ,
            ),
            const CostomTextFormAuth(
              hinttext: 'Enter Your password',
              labletext: 'password',
              iconData: Icons.lock_outlined,
              //mycontroller: ,
            ),

            const Text("forget password", textAlign: TextAlign.end),
            CustomButomAuth(text: "sing in", onPressed: () {}),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("dont have account?"),

                InkWell(
                  child: Text(
                    "sign up",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
