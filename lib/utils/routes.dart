import 'package:advisor_user_app/ui/pages/auth/countrylist/countrylist_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/expert_profile/expert_profile_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/forget_password/forgetpassword_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/language/language_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/manage_account/manageaccount_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/signin/signin_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/signup/signup_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/verify_email/verify_email.dart';
import 'package:advisor_user_app/ui/pages/main/community_reply/community_reply_screen.dart';
import 'package:advisor_user_app/ui/pages/main/home/discover_home_screen.dart';
import 'package:advisor_user_app/ui/pages/main/main/main_screen.dart';
import 'package:advisor_user_app/ui/pages/main/safety_tool/safety_tool_screen.dart';
import 'package:advisor_user_app/ui/pages/main/watch_history/watch_history_screen.dart';
import 'package:advisor_user_app/ui/pages/splash/custom_splash_screen.dart';
import 'package:advisor_user_app/utils/assets.dart';

import '../ui/pages/auth/create_newpassword_screen/creat_new_password_screen.dart';
import '../ui/pages/auth/privacyAnd_Security/privacyAndSecurity_screen.dart';
import '../ui/pages/main/settings/settings_screen.dart';

final mainRoutes = {
  CustomSplashScreen.id: (context) => const CustomSplashScreen(),
  SignInScreen.id: (context) => const SignInScreen(),
  SignUpScreen.id: (context) => const SignUpScreen(),
  SafetyToolScreen.id: (context) => SafetyToolScreen(),
  MainScreen.id: (context) => const MainScreen(),
  CreatNewPasswordScreen.id: (context) => const CreatNewPasswordScreen(),
  WatchHistoryScreen.id: (context) => const WatchHistoryScreen(),
  VerifyEmail.id: (context) => const VerifyEmail(),
  LanguageScreen.id: (context) => const LanguageScreen(),
  ForgetPasswordScreen.id: (context) => const ForgetPasswordScreen(),
  CommunityReplyScreen.id: (context) => const CommunityReplyScreen(),
  ManageAccountScreen.id: (context) => const ManageAccountScreen(),
  PrivacyAndSecurtyScreen.id: (context) => const PrivacyAndSecurtyScreen(),
  ExpertProfileScreen.id: (context) => const ExpertProfileScreen(),
  DiscoverScreenBody.id: (context) =>  DiscoverScreenBody(),
  CountryListScreen.id: (context) => const CountryListScreen(),
};
