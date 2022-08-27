import 'package:arisanku/resource/color/color_manager.dart';
import 'package:arisanku/resource/font/font_manager.dart';
import 'package:arisanku/widget/at_gantiPassword/CustomGantiPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class GantiPasswordScene extends StatefulWidget {
  const GantiPasswordScene({Key? key}) : super(key: key);

  @override
  State<GantiPasswordScene> createState() => _GantiPasswordSceneState();
}

class _GantiPasswordSceneState extends State<GantiPasswordScene> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool password = false;
  bool newPassword = false;
  bool confirmPassword = false;

  _passwordObsecure() {
    setState(() {
      password = !password;
    });
  }

  _newPasswordObsecure() {
    setState(() {
      newPassword = !newPassword;
    });
  }

  _confirmPasswordObsecure() {
    setState(() {
      confirmPassword = !confirmPassword;
    });
  }

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
                "Ganti Password",
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
              CustomGantiPassword(
                title: "Password Lama",
                controller: passwordController,
                imageUrl: password
                    ? "assets/icons/icon_obsactive.svg"
                    : "assets/icons/icon_obsinactive.svg",
                hintText: 'Masukan password lama anda',
                press: _passwordObsecure,
                obsecure: password ? false : true,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomGantiPassword(
                title: "Password Baru",
                controller: newPasswordController,
                imageUrl: newPassword
                    ? "assets/icons/icon_obsactive.svg"
                    : "assets/icons/icon_obsinactive.svg",
                hintText: 'Masukan password baru anda',
                press: _newPasswordObsecure,
                obsecure: newPassword ? false : true,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomGantiPassword(
                title: "Password Baru",
                controller: confirmPasswordController,
                imageUrl: confirmPassword
                    ? "assets/icons/icon_obsactive.svg"
                    : "assets/icons/icon_obsinactive.svg",
                hintText: 'Konfirmasi password baru anda',
                press: _confirmPasswordObsecure,
                obsecure: confirmPassword ? false : true,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          child: SizedBox(
            height: 6.h,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    ColorManager.positiveColor,
                  ),
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
