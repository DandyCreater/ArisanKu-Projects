import 'package:arisanku/resource/color/color_manager.dart';
import 'package:arisanku/resource/font/font_manager.dart';
import 'package:arisanku/widget/at_editProfile/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class EditProfileScene extends StatefulWidget {
  const EditProfileScene({Key? key}) : super(key: key);

  @override
  State<EditProfileScene> createState() => _EditProfileSceneState();
}

class _EditProfileSceneState extends State<EditProfileScene> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController tanggalLahirController = TextEditingController();
  TextEditingController noTelpController = TextEditingController();
  TextEditingController ktpController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  DateFormat dateFormat = DateFormat('dd/MM/yyyy');
  String jenisKelamin = "Laki-laki";

  Future<void> _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900, 8),
        lastDate: DateTime(2400));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;

        tanggalLahirController.text =
            dateFormat.format(selectedDate.toLocal()).split(" ")[0];
      });
    }
  }

  Widget gender() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Jenis Kelamin",
            style:
                regularStyle(fontSize: 12.sp, color: ColorManager.blackColor),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Row(
                children: [
                  Radio(
                    visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: "Laki-laki",
                    groupValue: jenisKelamin,
                    onChanged: (value) {
                      setState(() {
                        jenisKelamin = value.toString();
                      });
                    },
                    activeColor: ColorManager.positiveColor,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("Laki-laki",
                      style: regularStyle(
                        fontSize: 12.sp,
                        color: ColorManager.blackColor,
                      )),
                ],
              ),
              SizedBox(
                width: 5.w,
              ),
              Row(
                children: [
                  Radio(
                    visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: "Perempuan",
                    groupValue: jenisKelamin,
                    onChanged: (value) {
                      setState(() {
                        jenisKelamin = value.toString();
                      });
                    },
                    activeColor: ColorManager.positiveColor,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text("Perempuan",
                      style: regularStyle(
                        fontSize: 12.sp,
                        color: ColorManager.blackColor,
                      )),
                ],
              ),
            ],
          )
        ],
      );
  Widget tglLahir() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tanggal Lahir",
            style:
                regularStyle(fontSize: 12.sp, color: ColorManager.blackColor),
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
                controller: tanggalLahirController,
                readOnly: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(5.w, 1.5.h, 3.w, 1.h),
                    enabled: true,
                    isDense: true,
                    isCollapsed: true,
                    hintText: "Masukkan tanggal lahir anda",
                    suffixIcon: GestureDetector(
                      onTap: () => _selectedDate(context),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 2.h),
                          child:
                              SvgPicture.asset("assets/icons/icon_date.svg")),
                    ),
                    hintStyle: regularStyle(
                        fontSize: 14.sp, color: ColorManager.greyColor),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none))),
          )
        ],
      );

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
                "Edit Profile",
                style:
                    semiBoldStyle(fontSize: 16, color: ColorManager.blackColor),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      width: 25.w,
                      child: Stack(
                        children: [
                          Center(
                            child: ClipOval(
                              child: Image.asset(
                                  "assets/images/images_profile.png"),
                            ),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 0,
                            top: 40,
                            child: Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorManager.backgroundCameraColor,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 1.w, vertical: 1.w),
                                child: SvgPicture.asset(
                                  "assets/icons/icon_camera.svg",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextField(
                      hintText: "Masukan nama anda",
                      textInputType: TextInputType.text,
                      controller: nameController,
                      title: "Nama Lengkap"),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                      hintText: "Masukan email anda",
                      textInputType: TextInputType.emailAddress,
                      controller: emailController,
                      title: "Alamat Email"),
                  SizedBox(
                    height: 2.h,
                  ),
                  gender(),
                  SizedBox(
                    height: 2.h,
                  ),
                  tglLahir(),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                      hintText: "Nomor Telepon Anda",
                      textInputType: TextInputType.number,
                      controller: noTelpController,
                      title: "Nomor Telepon"),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                      hintText: "Nomor KTP",
                      textInputType: TextInputType.number,
                      controller: ktpController,
                      title: "Nomor KTP"),
                  SizedBox(
                    height: 5.h,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 6.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                ColorManager.positiveColor),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {},
                        child: Text(
                          "Konfirmasi",
                          style: mediumStyle(
                              fontSize: 14.sp, color: ColorManager.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              ),
            )),
      );
    }));
  }
}
