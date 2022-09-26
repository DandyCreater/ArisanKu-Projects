import 'package:arisanku/data/utils/resource/color/color_manager.dart';
import 'package:arisanku/data/utils/resource/font/font_manager.dart';
import 'package:arisanku/data/utils/resource/routes/routes_manager.dart';
import 'package:arisanku/presentation/widget/at_profilePage/customButton-mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ProfileScene extends StatelessWidget {
  const ProfileScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: ColorManager.backgroundColor,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: ColorManager.backgroundColor,
            title: Padding(
              padding: EdgeInsets.only(left: 3.w, top: 2.h),
              child: Text("Profile",
                  style: semiBoldStyle(
                      fontSize: 18.sp, color: ColorManager.blackColor)),
            )),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 25.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorManager.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.shadowColor,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/images/images_profile.png",
                            height: 13.h,
                            width: 20.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dandy Johnson",
                              style: semiBoldStyle(
                                  fontSize: 16.sp,
                                  color: ColorManager.positiveColor),
                            ),
                            Text(
                              "081311762320",
                              style: mediumStyle(
                                  fontSize: 12, color: ColorManager.blackColor),
                            ),
                            Text(
                              "Akun belum diverifikasi",
                              style: mediumStyle(
                                  fontSize: 12,
                                  color: ColorManager.negativeColor),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.editPageRoute);
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: EdgeInsets.only(top: 3.h),
                              child: SvgPicture.asset(
                                "assets/icons/icon_edit.svg",
                                height: 5.h,
                                width: 5.h,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Pengguna",
                  style: semiBoldStyle(
                      fontSize: 16.sp, color: ColorManager.blackColor),
                ),
                SizedBox(
                  height: 4.h,
                ),
                CustomButtonMainPage(
                  imageUrl: "assets/icons/icon_password.svg",
                  title: "Ganti Password",
                  press: () {
                    Navigator.pushNamed(context, Routes.gantiPasswordRoute);
                  },
                ),
                SizedBox(
                  height: 4.h,
                ),
                CustomButtonMainPage(
                  imageUrl: "assets/icons/icon_rekening.svg",
                  title: "Atur Rekening",
                  press: () {
                    Navigator.pushNamed(context, Routes.aturRekeningRoute);
                  },
                ),
                SizedBox(
                  height: 4.h,
                ),
                CustomButtonMainPage(
                  imageUrl: "assets/icons/icon_bahasa.svg",
                  title: "Atur Bahasa",
                  press: () {
                    Navigator.pushNamed(context, Routes.aturBahasaRoute);
                  },
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Umum",
                  style: semiBoldStyle(
                      fontSize: 16.sp, color: ColorManager.blackColor),
                ),
                SizedBox(
                  height: 3.h,
                ),
                CustomButtonMainPage(
                  imageUrl: "assets/icons/icon_bantuan.svg",
                  title: "Bantuan",
                  press: () {
                    Navigator.pushNamed(context, Routes.bantuanRoute);
                  },
                ),
                SizedBox(
                  height: 4.h,
                ),
                CustomButtonMainPage(
                  imageUrl: "assets/icons/icon_tentang.svg",
                  title: "Tentang Kami",
                  press: () {},
                ),
                SizedBox(
                  height: 4.h,
                ),
                CustomButtonMainPage(
                  imageUrl: "assets/icons/icon_privasi.svg",
                  title: "Kebijakan Privasi",
                  press: () {},
                ),
                SizedBox(
                  height: 7.h,
                ),
                Center(
                  child: Text(
                    "ARISAN YUK Version 1.1.1",
                    style: regularStyle(
                        fontSize: 14.sp, color: ColorManager.greyColor),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      );
    }));
  }
}
