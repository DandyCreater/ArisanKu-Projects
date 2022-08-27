import 'package:arisanku/resource/color/color_manager.dart';
import 'package:arisanku/resource/font/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class NotifikasiScene extends StatefulWidget {
  const NotifikasiScene({Key? key}) : super(key: key);

  @override
  State<NotifikasiScene> createState() => _NotifikasiSceneState();
}

class _NotifikasiSceneState extends State<NotifikasiScene> {
  Widget aktifitas() => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          child: Column(
            children: [
              Container(
                height: 24.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                          color: ColorManager.greyColor)
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jatuh Tempo Pembayaran",
                            style: mediumStyle(
                                fontSize: 11.sp,
                                color: ColorManager.blackColor),
                          ),
                          Text(
                            "20 September 2022",
                            style: mediumStyle(
                                fontSize: 10.sp, color: ColorManager.greyColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Sebentar lagi anda memiliki pembayaran pada ",
                          style: regularStyle(
                              fontSize: 11.sp, color: ColorManager.blackColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Eva's Arisan ",
                                style: mediumStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.positiveColor)),
                            TextSpan(
                                text: "senilai ",
                                style: regularStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.blackColor)),
                            TextSpan(
                                text: "Rp. 500.000 ",
                                style: mediumStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.negativeColor)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Batas waktu pembayaran sampai dengan ",
                          style: regularStyle(
                              fontSize: 11.sp, color: ColorManager.blackColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: "3 Oktober 2022 ",
                                style: mediumStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.positiveColor)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 24.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                          color: ColorManager.greyColor)
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Berhasil Bergabung",
                            style: mediumStyle(
                                fontSize: 12.sp,
                                color: ColorManager.blackColor),
                          ),
                          Text(
                            "20 September 2022",
                            style: mediumStyle(
                                fontSize: 10.sp, color: ColorManager.greyColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Anda berhasil bergabung pada ",
                          style: regularStyle(
                              fontSize: 11.sp, color: ColorManager.blackColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Elvi's Arisan ",
                                style: mediumStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.positiveColor)),
                            TextSpan(
                                text: "dengan Tenor pembayaran/minggu senilai ",
                                style: regularStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.blackColor)),
                            TextSpan(
                                text: "Rp. 300.000 ",
                                style: mediumStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.negativeColor)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "Diharapkan untuk membayar dan mengikuti peraturan yang sudah diberlakukan",
                        style: regularStyle(
                            fontSize: 11.sp, color: ColorManager.blackColor),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 24.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                          color: ColorManager.greyColor)
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Verifikasi Berhasil",
                            style: mediumStyle(
                                fontSize: 12.sp,
                                color: ColorManager.blackColor),
                          ),
                          Text(
                            "20 September 2022",
                            style: mediumStyle(
                                fontSize: 10.sp, color: ColorManager.greyColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Akun anda berhasil di verifikasi oleh pihak ",
                          style: regularStyle(
                              fontSize: 11.sp, color: ColorManager.blackColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Arisan Yuk ",
                                style: mediumStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.positiveColor)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "Ayo segera bergabung dengan arisan yang sudah dibuat.",
                        style: regularStyle(
                            fontSize: 11.sp, color: ColorManager.blackColor),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget berita() => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          child: Column(
            children: [
              Container(
                height: 22.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        color: ColorManager.greyColor,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Promo Arisan",
                            style: mediumStyle(
                                fontSize: 13.sp,
                                color: ColorManager.blackColor),
                          ),
                          Text(
                            "20 September 2022",
                            style: regularStyle(
                                fontSize: 10.sp, color: ColorManager.greyColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text:
                              "Dapatkan promo arisan dengan cara mengajak teman untuk melakukan ber-arisan di ",
                          style: regularStyle(
                              fontSize: 11.sp, color: ColorManager.blackColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Arisan Yuk ",
                                style: mediumStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.positiveColor)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Lihat Selengkapnya",
                          style: mediumStyle(
                              fontSize: 12.sp,
                              color: ColorManager.negativeColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 22.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        color: ColorManager.greyColor,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Arisan Ganda",
                            style: mediumStyle(
                                fontSize: 13.sp,
                                color: ColorManager.blackColor),
                          ),
                          Text(
                            "20 September 2022",
                            style: regularStyle(
                                fontSize: 10.sp, color: ColorManager.greyColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text:
                              "Anda hanya bisa melakukan arisan ganda apabila peringkat pada akun ",
                          style: regularStyle(
                              fontSize: 11.sp, color: ColorManager.blackColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Arisan Yuk ",
                                style: mediumStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.positiveColor)),
                            TextSpan(
                                text: "anda mencapai level 2",
                                style: regularStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.blackColor)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Lihat Selengkapnya",
                          style: mediumStyle(
                              fontSize: 12.sp,
                              color: ColorManager.negativeColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 22.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        color: ColorManager.greyColor,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pembayaran Otomatis",
                            style: mediumStyle(
                                fontSize: 13.sp,
                                color: ColorManager.blackColor),
                          ),
                          Text(
                            "20 September 2022",
                            style: regularStyle(
                                fontSize: 10.sp, color: ColorManager.greyColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: "Arisan Yuk ",
                          style: mediumStyle(
                              fontSize: 11.sp,
                              color: ColorManager.positiveColor),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    "akan merilis sebuah fitur untuk melakukan pembayaran automatis, sehingga menghindari keterlambatan pembayaran ",
                                style: regularStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.blackColor)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Lihat Selengkapnya",
                          style: mediumStyle(
                              fontSize: 12.sp,
                              color: ColorManager.negativeColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  TabBar get _tabBar => TabBar(
          indicatorColor: ColorManager.positiveColor,
          labelColor: ColorManager.positiveColor,
          unselectedLabelColor: ColorManager.blackColor,
          tabs: [
            Tab(
              child: Text(
                "Aktifitas",
                style: TextStyle(
                    fontSize: 14.sp, fontFamily: FontManager.fontFamily),
              ),
            ),
            Tab(
              child: Text(
                "Berita",
                style: TextStyle(
                    fontSize: 14.sp, fontFamily: FontManager.fontFamily),
              ),
            )
          ]);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
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
                  "Notifikasi",
                  style: semiBoldStyle(
                      fontSize: 16, color: ColorManager.blackColor),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: ColorManager.whiteColor,
                child: _tabBar,
              ),
            ),
          ),
          body: TabBarView(children: [
            aktifitas(),
            berita(),
          ]),
        ),
      );
    }));
  }
}
