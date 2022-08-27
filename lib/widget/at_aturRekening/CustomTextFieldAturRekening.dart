import 'package:arisanku/resource/color/color_manager.dart';
import 'package:arisanku/resource/font/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class CustomTextFieldAturRekening extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  const CustomTextFieldAturRekening({
    Key? key,
    required this.title,
    required this.hintText,
    required this.textInputType,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: regularStyle(fontSize: 12.sp, color: ColorManager.blackColor),
        ),
        SizedBox(
          height: 1.h,
        ),
        Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorManager.whiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                    color: ColorManager.shadowColor)
              ]),
          child: TextField(
              controller: controller,
              keyboardType: textInputType,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(5.w, 1.5.h, 3.w, 1.h),
                  enabled: true,
                  isDense: true,
                  isCollapsed: true,
                  hintText: hintText,
                  hintStyle: regularStyle(
                      fontSize: 12.sp, color: ColorManager.greyColor),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none))),
        ),
      ],
    );
  }
}
