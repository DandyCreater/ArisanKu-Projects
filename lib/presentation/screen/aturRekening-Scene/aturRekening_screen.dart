// import 'package:arisanku/model/aturRekeningModel.dart';
import 'package:arisanku/data/model/BankDataResponseModel.dart';
import 'package:arisanku/data/utils/resource/color/color_manager.dart';
import 'package:arisanku/data/utils/resource/font/font_manager.dart';
import 'package:arisanku/domain/entities/BankEntity.dart';
import 'package:arisanku/presentation/bloc/BankBloc/bank_bloc.dart';
import 'package:arisanku/presentation/widget/at_aturRekening/CustomTextFieldAturRekening.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class AturRekeningScene extends StatefulWidget {
  const AturRekeningScene({Key? key}) : super(key: key);

  @override
  State<AturRekeningScene> createState() => _AturRekeningSceneState();
}

class _AturRekeningSceneState extends State<AturRekeningScene> {
  TextEditingController norekController = TextEditingController();
  TextEditingController namaRekController = TextEditingController();
  String? selectedValue = "Bank Central Asia";

  trigered() async {
    BlocProvider.of<BankBloc>(context).add(FetchBank());
    print('triggered');
  }

  @override
  void initState() {
    // TODO: implement initState
    trigered();
    super.initState();
  }

  Widget bankDropdown() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nama Bank Anda",
            style:
                regularStyle(fontSize: 12.sp, color: ColorManager.blackColor),
          ),
          SizedBox(
            height: 1.h,
          ),
          BlocBuilder<BankBloc, BankState>(builder: (context, state) {
            if (state is BankSuccess) {
              return Container(
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
                  child: DropdownButtonFormField2(
                      iconSize: 0.0,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.expand_more,
                            color: ColorManager.blackColor,
                          ),
                          isCollapsed: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                      isDense: true,
                      isExpanded: true,
                      buttonHeight: 60,
                      dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorManager.whiteColor),
                      hint: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          'Masukan Nama Bank Anda',
                          style: regularStyle(
                              fontSize: 12.sp, color: ColorManager.greyColor),
                        ),
                      ),
                      items: state.bankEntity!.data!.lists!
                          .map((items) => DropdownMenuItem<ListsEntity>(
                              value: items,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.w, vertical: 2),
                                child: Row(
                                  children: [
                                    Container(
                                      height: double.infinity,
                                      width: 10.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(items.imageUrl!),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(
                                      items.title!,
                                      style: regularStyle(
                                          fontSize: 12.sp,
                                          color: ColorManager.blackColor),
                                    ),
                                  ],
                                ),
                              )))
                          .toList(),
                      onChanged: (ListsEntity? value) {
                        setState(() {
                          selectedValue = value!.title;
                        });
                      }));
            }
            return const CircularProgressIndicator();
          })
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
                "Atur Rekening Anda",
                style:
                    semiBoldStyle(fontSize: 16, color: ColorManager.blackColor),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          child: Column(
            children: [
              bankDropdown(),
              SizedBox(
                height: 2.h,
              ),
              CustomTextFieldAturRekening(
                  title: "Nomor Rekening Anda",
                  hintText: "Masukan Nomor Rekening Anda",
                  textInputType: TextInputType.number,
                  controller: norekController),
              SizedBox(
                height: 2.h,
              ),
              CustomTextFieldAturRekening(
                  title: "Nama Rekening Anda",
                  hintText: "Masukan Nama Rekening Anda",
                  textInputType: TextInputType.text,
                  controller: namaRekController),
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
                    fontSize: 14.sp, color: ColorManager.whiteColor),
              ),
            ),
          ),
        ),
      );
    }));
  }
}
