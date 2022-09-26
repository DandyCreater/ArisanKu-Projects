import 'package:arisanku/data/utils/resource/color/color_manager.dart';
import 'package:arisanku/data/utils/resource/font/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CustomGantiPassword extends StatelessWidget {
  final Function() press;
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final String? imageUrl;
  final bool obsecure;
  const CustomGantiPassword({
    Key? key,
    required this.press,
    required this.title,
    required this.hintText,
    required this.controller,
    required this.imageUrl,
    required this.obsecure,
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
          height: 2.h,
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
              obscureText: obsecure,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(5.w, 1.5.h, 3.w, 1.h),
                  enabled: true,
                  isDense: true,
                  isCollapsed: true,
                  hintText: hintText,
                  suffixIcon: GestureDetector(
                    onTap: press,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.w),
                      child: SvgPicture.asset(imageUrl!),
                    ),
                  ),
                  hintStyle: regularStyle(
                      fontSize: 11.sp, color: ColorManager.greyColor),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none))),
        )
      ],
    );
  }
}
