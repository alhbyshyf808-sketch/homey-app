import 'package:flutter/material.dart';

class CostomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final IconData iconData;
  final TextEditingController? mycontroller;

  const CostomTextFormAuth({
    super.key,
    required this.hinttext,
    required this.labletext,
    required this.iconData,
    this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14),

          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 30,
          ),
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(labletext),
          ),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
