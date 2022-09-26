import 'package:arisanku/data/utils/resource/color/color_manager.dart';
import 'package:arisanku/data/utils/resource/font/font_manager.dart';
import 'package:arisanku/presentation/widget/at_arisanku/CustomButtonFilter.dart';
import 'package:arisanku/presentation/widget/at_arisanku/CustomCardProgress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ArisanKuScene extends StatefulWidget {
  const ArisanKuScene({Key? key}) : super(key: key);

  @override
  State<ArisanKuScene> createState() => _ArisanKuSceneState();
}

class _ArisanKuSceneState extends State<ArisanKuScene> {
  int tenorIndex = 0;
  int nominalIndex = 0;
  int nominalAkhirIndex = 0;

  Future<Null> firstUpdatedTenor(StateSetter updateState) async {
    updateState(() {
      tenorIndex = 0;
    });
  }

  Future<Null> secondUpdatedTenor(StateSetter updateState) async {
    updateState(() {
      tenorIndex = 1;
    });
  }

  Future<Null> firstUpdatedNominal(StateSetter updateState) async {
    updateState(() {
      nominalIndex = 0;
    });
  }

  Future<Null> secondUpdatedNominal(StateSetter updateState) async {
    updateState(() {
      nominalIndex = 1;
    });
  }

  Future<Null> firstUpdatedNominalAkhir(StateSetter updateState) async {
    updateState(() {
      nominalAkhirIndex = 0;
    });
  }

  Future<Null> secondUpdatedNominalAkhir(StateSetter updateState) async {
    updateState(() {
      nominalAkhirIndex = 1;
    });
  }

  Widget sedangBerjalan() => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
          child: Column(
            children: [
              CustomCardProgress(
                imageUrl: "assets/images/images_arisanku1.png",
                arisanName: "Linda's Arisan",
                invoice: "ARYUK/20228012/070830",
                statusBayar: "Bayar/Minggu",
                nominalSetoran: "Rp. 500.000",
                jumlahPeserta: "12 Orang",
                totalUang: "Rp. 6.000.000",
                mingguke: "9",
                tanggalAwal: "19 Agustus",
                tanggalAkhir: "19 November",
                arisanpress: () {},
                grouppress: () {},
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomCardProgress(
                imageUrl: "assets/images/images_arisanku2.png",
                arisanName: "Eva's Arisan",
                invoice: "ARYUK/20228012/070830",
                statusBayar: "Bayar/Bulan",
                nominalSetoran: "Rp. 500.000",
                jumlahPeserta: "12 Orang",
                totalUang: "Rp. 6.000.000",
                mingguke: "6",
                tanggalAwal: "19 Agustus",
                tanggalAkhir: "19 November",
                arisanpress: () {},
                grouppress: () {},
              ),
            ],
          ),
        ),
      );

  Widget sudahSelesai() => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
          child: Column(
            children: [
              CustomCardProgress(
                imageUrl: "assets/images/images_arisanku1.png",
                arisanName: "Linda's Arisan",
                invoice: "ARYUK/20228012/070830",
                statusBayar: "Bayar/Minggu",
                nominalSetoran: "Rp. 500.000",
                jumlahPeserta: "12 Orang",
                totalUang: "Rp. 6.000.000",
                mingguke: "9",
                tanggalAwal: "19 Agustus",
                tanggalAkhir: "19 November",
                arisanpress: () {},
                grouppress: () {},
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomCardProgress(
                imageUrl: "assets/images/images_arisanku2.png",
                arisanName: "Eva's Arisan",
                invoice: "ARYUK/20228012/070830",
                statusBayar: "Bayar/Bulan",
                nominalSetoran: "Rp. 500.000",
                jumlahPeserta: "12 Orang",
                totalUang: "Rp. 6.000.000",
                mingguke: "6",
                tanggalAwal: "19 Agustus",
                tanggalAkhir: "19 November",
                arisanpress: () {},
                grouppress: () {},
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
                "Sedang Berjalan",
                style: TextStyle(
                    fontSize: 14.sp, fontFamily: FontManager.fontFamily),
              ),
            ),
            Tab(
              child: Text(
                "Sudah Selesai",
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
            title: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Arisanku",
                    style: semiBoldStyle(
                        fontSize: 16, color: ColorManager.blackColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(builder: (context, state) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.w, vertical: 2.h),
                                height: 60.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Filter",
                                        style: mediumStyle(
                                          fontSize: 16.sp,
                                          color: ColorManager.blackColor,
                                        )),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      "Tenor",
                                      style: regularStyle(
                                          fontSize: 12.sp,
                                          color: ColorManager.blackColor),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        CustomButtonFilter(
                                            buttonColor: tenorIndex == 0
                                                ? ColorManager.positiveColor
                                                : ColorManager.whiteColor,
                                            textColor: tenorIndex == 0
                                                ? ColorManager.whiteColor
                                                : ColorManager.positiveColor,
                                            textButton: "Tercepat",
                                            side: tenorIndex == 0
                                                ? BorderSide.none
                                                : BorderSide(
                                                    color: ColorManager
                                                        .positiveColor),
                                            press: () {
                                              firstUpdatedTenor(state);
                                            }),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        CustomButtonFilter(
                                            buttonColor: tenorIndex == 1
                                                ? ColorManager.positiveColor
                                                : ColorManager.whiteColor,
                                            textColor: tenorIndex == 1
                                                ? ColorManager.whiteColor
                                                : ColorManager.positiveColor,
                                            textButton: "Terlama",
                                            side: tenorIndex == 1
                                                ? BorderSide.none
                                                : BorderSide(
                                                    color: ColorManager
                                                        .positiveColor),
                                            press: () {
                                              secondUpdatedTenor(state);
                                            })
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      "Nominal",
                                      style: regularStyle(
                                          fontSize: 12.sp,
                                          color: ColorManager.blackColor),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        CustomButtonFilter(
                                            buttonColor: nominalIndex == 0
                                                ? ColorManager.positiveColor
                                                : ColorManager.whiteColor,
                                            textColor: nominalIndex == 0
                                                ? ColorManager.whiteColor
                                                : ColorManager.positiveColor,
                                            textButton: "Terbesar",
                                            side: nominalIndex == 0
                                                ? BorderSide.none
                                                : BorderSide(
                                                    color: ColorManager
                                                        .positiveColor),
                                            press: () {
                                              firstUpdatedNominal(state);
                                            }),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        CustomButtonFilter(
                                          buttonColor: nominalIndex == 1
                                              ? ColorManager.positiveColor
                                              : ColorManager.whiteColor,
                                          textColor: nominalIndex == 1
                                              ? ColorManager.whiteColor
                                              : ColorManager.positiveColor,
                                          textButton: "Terkecil",
                                          side: nominalIndex == 1
                                              ? BorderSide.none
                                              : BorderSide(
                                                  color: ColorManager
                                                      .positiveColor),
                                          press: () {
                                            secondUpdatedNominal(state);
                                          },
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Text(
                                      "Nominal Akhir",
                                      style: regularStyle(
                                          fontSize: 12.sp,
                                          color: ColorManager.blackColor),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        CustomButtonFilter(
                                            buttonColor: nominalAkhirIndex == 0
                                                ? ColorManager.positiveColor
                                                : ColorManager.whiteColor,
                                            textColor: nominalAkhirIndex == 0
                                                ? ColorManager.whiteColor
                                                : ColorManager.positiveColor,
                                            textButton: "Terbesar",
                                            side: nominalAkhirIndex == 0
                                                ? BorderSide.none
                                                : BorderSide(
                                                    color: ColorManager
                                                        .positiveColor),
                                            press: () {
                                              firstUpdatedNominalAkhir(state);
                                            }),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        CustomButtonFilter(
                                            buttonColor: nominalAkhirIndex == 1
                                                ? ColorManager.positiveColor
                                                : ColorManager.whiteColor,
                                            textColor: nominalAkhirIndex == 1
                                                ? ColorManager.whiteColor
                                                : ColorManager.positiveColor,
                                            textButton: "Terkecil",
                                            side: nominalAkhirIndex == 1
                                                ? BorderSide.none
                                                : BorderSide(
                                                    color: ColorManager
                                                        .positiveColor),
                                            press: () {
                                              secondUpdatedNominalAkhir(state);
                                            })
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    ColorManager.positiveColor),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Submit",
                                          style: mediumStyle(
                                              fontSize: 12.sp,
                                              color: ColorManager.whiteColor),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                          });
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 5.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                            color: ColorManager.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: ColorManager.positiveColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 1.w, vertical: 1.h),
                                child: SvgPicture.asset(
                                    "assets/icons/icon_filter.svg"),
                              ),
                              Text(
                                "Filter",
                                style: regularStyle(
                                    fontSize: 11.sp,
                                    color: ColorManager.positiveColor),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            height: 2.h,
                            width: 2.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorManager.positiveColor),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
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
            sedangBerjalan(),
            sudahSelesai(),
          ]),
        ),
      );
    }));
  }
}
