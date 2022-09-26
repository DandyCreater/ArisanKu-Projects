import 'package:arisanku/data/utils/resource/color/color_manager.dart';
import 'package:arisanku/data/utils/resource/font/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class CustomCardProgress extends StatelessWidget {
  final Function() arisanpress;
  final Function() grouppress;
  final String? imageUrl;
  final String? arisanName;
  final String? invoice;
  final String? statusBayar;
  final String? nominalSetoran;
  final String? jumlahPeserta;
  final String? totalUang;
  final String? mingguke;
  final String? tanggalAwal;
  final String? tanggalAkhir;

  const CustomCardProgress(
      {Key? key,
      required this.arisanpress,
      required this.grouppress,
      required this.imageUrl,
      required this.arisanName,
      required this.invoice,
      required this.statusBayar,
      required this.nominalSetoran,
      required this.jumlahPeserta,
      required this.totalUang,
      required this.mingguke,
      required this.tanggalAwal,
      required this.tanggalAkhir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorManager.whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: ColorManager.greyColor,
                blurRadius: 2,
                offset: const Offset(0, 2))
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  fit: FlexFit.loose,
                  child: Container(
                    height: 8.h,
                    width: 14.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(imageUrl!), fit: BoxFit.cover)),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  flex: 9,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 8.h,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              arisanName!,
                              style: semiBoldStyle(
                                  fontSize: 12.sp,
                                  color: ColorManager.blackColor),
                            ),
                            Text(
                              invoice!,
                              style: mediumStyle(
                                  fontSize: 11.sp,
                                  color: ColorManager.greyColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  flex: 4,
                  child: SizedBox(
                    height: 8.h,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        statusBayar!,
                        style: regularStyle(
                            fontSize: 10.sp, color: ColorManager.greenColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Setoran",
                      style: regularStyle(
                          fontSize: 11.sp, color: ColorManager.greyColor),
                    ),
                    Text(
                      nominalSetoran!,
                      style: regularStyle(
                        fontSize: 11.sp,
                        color: ColorManager.blackColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Jumlah Peserta",
                      style: regularStyle(
                          fontSize: 11.sp, color: ColorManager.greyColor),
                    ),
                    Text(
                      jumlahPeserta!,
                      style: regularStyle(
                        fontSize: 11.sp,
                        color: ColorManager.blackColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Total Uang",
                      style: regularStyle(
                          fontSize: 11.sp, color: ColorManager.greyColor),
                    ),
                    Text(
                      totalUang!,
                      style: regularStyle(
                        fontSize: 11.sp,
                        color: ColorManager.blackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Stack(
              children: [
                Container(
                  height: 3.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorManager.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 2),
                            color: ColorManager.greyColor,
                            blurRadius: 2)
                      ]),
                ),
                Container(
                  height: 3.h,
                  width: 65.w,
                  decoration: BoxDecoration(
                      color: ColorManager.greenColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 2),
                            color: ColorManager.greyColor,
                            blurRadius: 2)
                      ]),
                ),
                Center(
                  child: Text("Minggu ke-$mingguke",
                      style: mediumStyle(
                        fontSize: 10.sp,
                        color: ColorManager.blackColor,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  tanggalAwal!,
                  style: regularStyle(
                      fontSize: 11.sp, color: ColorManager.blackColor),
                ),
                Text(
                  tanggalAkhir!,
                  style: regularStyle(
                      fontSize: 11.sp, color: ColorManager.blackColor),
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 5.h,
                  width: 35.w,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              ColorManager.positiveColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: arisanpress,
                      child: Text(
                        "Lihat Arisan",
                        style: mediumStyle(
                            fontSize: 10.sp, color: ColorManager.whiteColor),
                      )),
                ),
                SizedBox(
                  height: 5.h,
                  width: 35.w,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          ColorManager.whiteColor,
                        ),
                        side: MaterialStateProperty.all(
                            BorderSide(color: ColorManager.positiveColor)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: grouppress,
                      child: Text(
                        "Chat Group",
                        style: mediumStyle(
                            fontSize: 10.sp, color: ColorManager.positiveColor),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
