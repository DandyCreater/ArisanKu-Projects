import 'package:arisanku/app.dart';
import 'package:flutter/material.dart';
import './data/utils/resource/InjectionContainer.dart' as d;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await d.init(''); //BASEURL API
  runApp(const MyApp());
}
