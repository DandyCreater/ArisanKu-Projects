import 'package:arisanku/resource/color/color_manager.dart';
import 'package:arisanku/resource/font/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class CustomButtonFilter extends StatelessWidget {
  final Color? buttonColor;
  final Color? textColor;
  final BorderSide? side;
  final String? textButton;
  final Function() press;

  const CustomButtonFilter(
      {Key? key,
      required this.buttonColor,
      required this.textColor,
      required this.textButton,
      required this.side,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 6.h,
        width: 30.w,
        child: ElevatedButton(
            style: ButtonStyle(
                side: MaterialStateProperty.all(side),
                backgroundColor: MaterialStateProperty.all(buttonColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            onPressed: press,
            child: Text(
              textButton!,
              style: regularStyle(fontSize: 11.sp, color: textColor!),
            )));
  }
}
