import 'package:arisanku/data/utils/resource/color/color_manager.dart';
import 'package:arisanku/data/utils/resource/font/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class BantuanScene extends StatefulWidget {
  const BantuanScene({Key? key}) : super(key: key);

  @override
  State<BantuanScene> createState() => _BantuanSceneState();
}

class _BantuanSceneState extends State<BantuanScene> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return Scaffold(
          backgroundColor: ColorManager.whiteColor,
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
                  "Bantuan",
                  style: semiBoldStyle(
                      fontSize: 16, color: ColorManager.blackColor),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        controller: searchController,
                        decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.search,
                                color: ColorManager.blackColor,
                                size: 4.h,
                              ),
                            ),
                            contentPadding:
                                EdgeInsets.fromLTRB(5.w, 1.5.h, 3.w, 1.h),
                            enabled: true,
                            isDense: true,
                            isCollapsed: true,
                            hintText: "Ketik Kata Kunci",
                            hintStyle: regularStyle(
                                fontSize: 14.sp, color: ColorManager.greyColor),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none))),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Pertanyaan Populer",
                    style: mediumStyle(
                        fontSize: 12.sp, color: ColorManager.blackColor),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 54.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.whiteColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: ColorManager.greyColor,
                            offset: const Offset(0, 2))
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 60.w,
                                  height: 6.h,
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Kenapa deposit ",
                                      style: regularStyle(
                                          fontSize: 11.sp,
                                          color: ColorManager.blackColor),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Arisan Yuk ",
                                            style: mediumStyle(
                                                fontSize: 11.sp,
                                                color: ColorManager
                                                    .positiveColor)),
                                        TextSpan(
                                            text: "saya belum masuk? ",
                                            style: regularStyle(
                                                fontSize: 11.sp,
                                                color:
                                                    ColorManager.blackColor)),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 6.h,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.h),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorManager.blackColor,
                                        size: 3.h,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 60.w,
                                  height: 8.h,
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                          "Berapa lama waktu yang dibutuhkan untuk pencairan dana dari pihak ",
                                      style: regularStyle(
                                          fontSize: 11.sp,
                                          color: ColorManager.blackColor),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Arisan Yuk?",
                                            style: mediumStyle(
                                                fontSize: 11.sp,
                                                color: ColorManager
                                                    .positiveColor)),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ColorManager.blackColor,
                                      size: 3.h,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 60.w,
                                    height: 6.h,
                                    child: Text(
                                        "Kenapa akun saya belum diverifikasi",
                                        style: regularStyle(
                                          fontSize: 11.sp,
                                          color: ColorManager.blackColor,
                                        ))),
                                SizedBox(
                                  height: 6.h,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ColorManager.blackColor,
                                      size: 3.h,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 60.w,
                                    height: 8.h,
                                    child: Text(
                                        "Kenapa dana yang diterima tidak sesuai dengan total arisan?",
                                        style: regularStyle(
                                          fontSize: 11.sp,
                                          color: ColorManager.blackColor,
                                        ))),
                                SizedBox(
                                  height: 8.h,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ColorManager.blackColor,
                                      size: 3.h,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 60.w,
                                    height: 8.5.h,
                                    child: Text(
                                        "Kenapa Saya gagal untuk masuk kedalam group arisan yang sudah disediakan?",
                                        style: regularStyle(
                                          fontSize: 11.sp,
                                          color: ColorManager.blackColor,
                                        ))),
                                SizedBox(
                                  height: 8.h,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ColorManager.blackColor,
                                      size: 3.h,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 60.w,
                                    height: 8.h,
                                    child: Text(
                                        "Kenapa saya gagal untuk membuat group arisan?",
                                        style: regularStyle(
                                          fontSize: 11.sp,
                                          color: ColorManager.blackColor,
                                        ))),
                                SizedBox(
                                  height: 8.h,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ColorManager.blackColor,
                                      size: 3.h,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 17.h,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Butuh bantuan lebih lanjut?",
                    style: regularStyle(
                        fontSize: 10.sp, color: ColorManager.blackColor),
                  ),
                  Text(
                    "Silahkan kontak Customer Service kami",
                    style: regularStyle(
                        fontSize: 10.sp, color: ColorManager.blackColor),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 6.h,
                          width: 38.w,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    ColorManager.positiveColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            onPressed: () {},
                            child: Text(
                              "Chat",
                              style: mediumStyle(
                                fontSize: 12.sp,
                                color: ColorManager.whiteColor,
                              ),
                            ),
                          )),
                      SizedBox(
                          height: 6.h,
                          width: 38.w,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  ColorManager.whiteColor,
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            onPressed: () {},
                            child: Text(
                              "Email",
                              style: mediumStyle(
                                fontSize: 12.sp,
                                color: ColorManager.positiveColor,
                              ),
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ));
    }));
  }
}
