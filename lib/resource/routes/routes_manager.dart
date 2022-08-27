import 'package:arisanku/mainPage.dart';
import 'package:arisanku/screen/aturBahasa-Scene/aturBahasa_screen.dart';
import 'package:arisanku/screen/aturRekening-Scene/aturRekening_screen.dart';
import 'package:arisanku/screen/bantuan-Scene/bantuan_screen.dart';
import 'package:arisanku/screen/editProfile-Scene/editProfileScene.dart';
import 'package:arisanku/screen/gantiPassword-Scene/gantiPassword_screen.dart';
import 'package:arisanku/screen/notifikasi-Scene/notifikasi_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static const String mainPageRoute = '/';
  static const String notificationPageRoute = "/notification";
  static const String editPageRoute = '/edit';
  static const String gantiPasswordRoute = '/changepassword';
  static const String aturRekeningRoute = '/aturrekening';
  static const String aturBahasaRoute = '/aturbahasa';
  static const String bantuanRoute = '/bantuanRoute';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.mainPageRoute:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case Routes.notificationPageRoute:
        return PageTransition(
          child: const NotifikasiScene(),
          type: PageTransitionType.fade,
          duration: const Duration(seconds: 1),
        );
      case Routes.editPageRoute:
        return PageTransition(
          child: const EditProfileScene(),
          type: PageTransitionType.fade,
          duration: const Duration(seconds: 1),
        );
      case Routes.gantiPasswordRoute:
        return PageTransition(
            child: const GantiPasswordScene(),
            type: PageTransitionType.fade,
            duration: const Duration(seconds: 1));
      case Routes.aturRekeningRoute:
        return PageTransition(
            child: const AturRekeningScene(),
            type: PageTransitionType.fade,
            duration: const Duration(seconds: 1));
      case Routes.aturBahasaRoute:
        return PageTransition(
            child: const AturBahasaScene(),
            type: PageTransitionType.fade,
            duration: const Duration(seconds: 1));
      case Routes.bantuanRoute:
        return PageTransition(
            child: const BantuanScene(),
            type: PageTransitionType.fade,
            duration: const Duration(seconds: 1));
      default:
        return noRouteFound();
    }
  }

  static Route<dynamic> noRouteFound() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route Found"),
              ),
              body: const Center(
                child: Text("No Route Found"),
              ),
            ));
  }
}
