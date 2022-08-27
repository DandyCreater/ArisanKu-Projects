import 'package:arisanku/resource/color/color_manager.dart';
import 'package:arisanku/resource/font/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class AturBahasaScene extends StatefulWidget {
  const AturBahasaScene({Key? key}) : super(key: key);

  @override
  State<AturBahasaScene> createState() => _AturBahasaSceneState();
}

class _AturBahasaSceneState extends State<AturBahasaScene> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: ColorManager.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorManager.whiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: ColorManager.blackColor,
                  )),
              Text(
                "Atur Bahasa",
                style:
                    semiBoldStyle(fontSize: 16, color: ColorManager.blackColor),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pilih Bahasa",
                style: regularStyle(
                    fontSize: 12.sp, color: ColorManager.blackColor),
              ),
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  height: 7.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorManager.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.shadowColor,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                            flex: 3,
                            fit: FlexFit.loose,
                            child: SvgPicture.asset(
                                "assets/icons/icon_indonesia.svg")),
                        Flexible(
                          flex: 10,
                          fit: FlexFit.loose,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Bahasa Indonesia",
                              style: regularStyle(
                                  fontSize: 12.sp,
                                  color: ColorManager.blackColor),
                            ),
                          ),
                        ),
                        index == 0
                            ? Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Icon(
                                  Icons.check,
                                  color: ColorManager.positiveColor,
                                ),
                              )
                            : Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Container()),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  height: 7.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorManager.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.shadowColor,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                            flex: 3,
                            fit: FlexFit.loose,
                            child:
                                SvgPicture.asset("assets/icons/icon_us.svg")),
                        Flexible(
                          flex: 10,
                          fit: FlexFit.loose,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Bahasa Inggris ",
                              style: regularStyle(
                                  fontSize: 12.sp,
                                  color: ColorManager.blackColor),
                            ),
                          ),
                        ),
                        index == 1
                            ? Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Icon(
                                  Icons.check,
                                  color: ColorManager.positiveColor,
                                ),
                              )
                            : Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Container()),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
          child: SizedBox(
            height: 6.h,
            width: double.infinity,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(ColorManager.positiveColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                child: Text(
                  "Konfirmasi",
                  style: mediumStyle(
                      fontSize: 12.sp, color: ColorManager.whiteColor),
                )),
          ),
        ),
      );
    }));
  }
}
