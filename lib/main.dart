import 'package:airplane_flutter_2_10/cubit/page_cubit.dart';
import 'package:airplane_flutter_2_10/ui/pages/bonus_page.dart';
import 'package:airplane_flutter_2_10/ui/pages/get_started_page.dart';
import 'package:airplane_flutter_2_10/ui/pages/main_page.dart';
import 'package:airplane_flutter_2_10/ui/pages/sign_up_page.dart';
import 'package:airplane_flutter_2_10/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/bonus': (context) => const BonusPage(),
          '/main': (context) => const MainPage(),
        },
      ),
    );
  }
}
