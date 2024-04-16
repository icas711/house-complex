import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:housing_complex_objects/bloc_observable.dart';
import 'package:housing_complex_objects/routes.dart';
import 'package:housing_complex_objects/utils/constants.dart';

void main() async {
  Bloc.observer =  HousingComplexBlocObservable();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {


  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xff49A5C1),
              elevation: 10,
              shadowColor: const Color(0xff49A5C1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle:
              const TextStyle(color: Colors.white, fontWeight: kFontWeight),
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: const BorderSide(
                  color: kPrimaryColor,
                  width: 2,
                ),
              ),
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: kPrimaryColor,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          scaffoldBackgroundColor: kBackgroundColor,
          navigationBarTheme: NavigationBarThemeData(
            backgroundColor: Colors.blueGrey.shade50,
            iconTheme: const MaterialStatePropertyAll(IconThemeData(
              color: Colors.grey,
            )),
            labelTextStyle: const MaterialStatePropertyAll(TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
            )),
          )),
    );
  }

}
