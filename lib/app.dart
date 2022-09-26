import 'package:arisanku/data/utils/resource/InjectionContainer.dart';
import 'package:arisanku/data/utils/resource/routes/routes_manager.dart';
import 'package:arisanku/presentation/bloc/BankBloc/bank_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final bankBloc = sl<BankBloc>();
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => bankBloc)],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.mainPageRoute,
      ),
    );
  }
}
