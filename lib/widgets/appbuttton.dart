import 'package:flutter/material.dart';
import 'package:payment_app/components/components.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {this.backgroundcolor,
      required this.buttontext,
      this.isborder,
      this.onTap,
      this.textcolor,
      Key? key})
      : super(key: key);

  final String? buttontext;
  final Color? backgroundcolor;
  final Color? textcolor;
  final Function()? onTap;
  final bool? isborder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        child: Center(
          child: Text(
            buttontext!,
            style: TextStyle(
                color: textcolor, fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
        decoration: BoxDecoration(
          color: backgroundcolor ?? AppColor.mainColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 3,
            color: AppColor.mainColor,
          ),
        ),
      ),
    );
  }
}
