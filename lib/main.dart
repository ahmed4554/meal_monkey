import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'generated/codegen_loader.g.dart';
import 'screens/login_screen/view.dart';
import 'screens/login_start/view.dart';
import 'screens/main/view.dart';
import 'screens/new_password/view.dart';
import 'screens/on_boarding/view.dart';
import 'screens/otp_screen/view.dart';
import 'screens/register/view.dart';
import 'screens/reset_password/view.dart';
import 'screens/splash/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      assetLoader: CodegenLoader(),
      startLocale: Locale('en','US'),
      supportedLocales: [Locale('ar','SA'), Locale('en','US')],
      path:
          'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      saveLocale: true,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Color(0xff367FC0), shape: StadiumBorder()),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(
              color: Color(0xffFC6011),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          const SplashScreen(),
          BeforeLogin(),
          LoginScreen(),
          RegisterScreen(),
          ResetScreen(),
          OtpScreen(),
          NewPasswordScreen(),
          const OnBoardingScreen(),
          MainPage(),
        ],
      ),
    );
  }
}
