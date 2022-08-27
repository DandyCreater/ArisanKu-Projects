import 'package:arisanku/resource/color/color_manager.dart';
import 'package:arisanku/resource/font/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CustomButtonMainPage extends StatelessWidget {
  final Function() press;
  final String? imageUrl;
  final String? title;
  const CustomButtonMainPage(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            fit: FlexFit.loose,
            child: SvgPicture.asset(
              imageUrl!,
              height: 4.h,
              width: 4.w,
            ),
          ),
          Flexible(
            flex: 10,
            fit: FlexFit.loose,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title!,
                style: regularStyle(
                    fontSize: 14.sp, color: ColorManager.blackColor),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Icon(
              Icons.arrow_forward_ios,
              color: ColorManager.blackColor,
              size: 4.h,
            ),
          )
        ],
      ),
    );
  }
}
