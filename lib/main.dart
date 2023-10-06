

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_app/calendar/calendar_screen.dart';
import 'package:nasa_app/calendar/calender.dart';
import 'package:nasa_app/cubit/calendar_cubit.dart';
import 'package:nasa_app/onboarding/onboarding_screen.dart';
import 'package:nasa_app/view/FirstScreen.dart';

void main() {

  runApp(BlocProvider(
    create: (context) => CalendarCubit(),
    child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
    );
  }
}

