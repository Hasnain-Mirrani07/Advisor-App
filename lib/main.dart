import 'package:advisor_user_app/core/providers/bottom_nav_provider.dart';
import 'package:advisor_user_app/ui/pages/auth/create_newpassword_screen/creat_new_password_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/expert_profile/expert_profile_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/language/language_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/privacyAnd_Security/privacyAndSecurity_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/signin/signin_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/signup/signup_screen.dart';
import 'package:advisor_user_app/ui/pages/main/home/discover_home_screen.dart';
import 'package:advisor_user_app/ui/pages/main/main/main_screen.dart';
import 'package:advisor_user_app/ui/pages/splash/custom_splash_screen.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'core/providers/showPassword_provider.dart';
import 'core/providers/tab_bar_provider.dart';
import 'ui/pages/auth/countrylist/countrylist_provider.dart';
import 'ui/pages/auth/countrylist/countrylist_screen.dart';
import 'ui/pages/main/safety_tool/safety_tool_screen.dart';

import 'ui/pages/main/main/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        saveLocale: false,
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('ar', 'SA'),
        ],
        fallbackLocale: const Locale('en', 'US'),
        path: 'assets/lang',
        child: const MyApp()),
  );
}

//-----------------------------------------------------
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavbarProvider()),
        ChangeNotifierProvider(create: (_) => CstmTabBarProvider()),
        ChangeNotifierProvider(create: (_) => ShowPasswordProvider()),
        ChangeNotifierProvider(create: (_) => CountryListProvider()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: false,
          splitScreenMode: true,
          useInheritedMediaQuery: true,
          builder: (context, child) {
            return MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              theme: _buildTheme(Brightness.dark),
              //home: const MainScreen(),
              // home: const MainScreen(),

              initialRoute: CountryListScreen.id,
              routes: mainRoutes,

              //home: CreatNewPasswordScreen(),
              //  home: CustomSplashScreen(),
            );
          }),
    );
  }

  //---------------------------------------------------
  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: whiteColor,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.yantramanavTextTheme(baseTheme.textTheme),
    );
  }
}
