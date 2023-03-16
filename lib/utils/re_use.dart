// ignore_for_file: unused_element

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
import 'package:advisor_user_app/ui/pages/main/settings/settings_screen.dart';
import 'package:advisor_user_app/ui/shared/widgets/delete_dialogbox.dart';
import 'package:flutter/material.dart';

import '../ui/pages/auth/expert_profile/expert_profile_screen.dart';
import '../ui/pages/auth/create_newpassword_screen/creat_new_password_screen.dart';
import '../ui/pages/auth/privacyAnd_Security/privacyAndSecurity_screen.dart';
import '../ui/pages/main/watch_history/watch_history_screen.dart';

class ReUse {
  //------------------------------------------------------------------------------------
  void goToOffSignInScreen(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      SignInScreen.id,
    );
  }

//------------------------------------------------------------------------------------
  void goToSignInScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      SignInScreen.id,
    );
  }

  //------------------------------------------------------------------------------------
  void goToSignUpScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      SignUpScreen.id,
    );
  }

  // //------------------------------------------------------------------------------------
  // void goToConfirmPasswordScreen(BuildContext context) {
  //   Navigator.pushNamed(
  //     context,
  //     goToConfirmPasswordScreen.id,
  //   );
  // }

  //------------------------------------------------------------------------------------
  void goToMainScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      MainScreen.id,
    );
  }

  //------------------------------------------------------------------------------------
  void goBack(BuildContext context) {
    Navigator.pop(context);
  }

//------------------------------------------------------------------------------------
  void gotoSafetyTootScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      SafetyToolScreen.id,
    );
  }

//------------------------------------------------------------------------------------
  void goToVerifyEmailScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      VerifyEmail.id,
    );
  }

//------------------------------------------------------------------------------------
  void goToForgetPasswordScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      ForgetPasswordScreen.id,
    );
  }

//------------------------------------------------------------------------------------
  void goToLanguageScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      LanguageScreen.id,
    );
  }

//------------------------------------------------------------------------------------
  void goToManageAccountScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      ManageAccountScreen.id,
    );
  }

//------------------------------------------------------------------------------------
  void goToExpertProfileScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      ExpertProfileScreen.id,
    );
  }

//------------------------------------------------------------------------------------
  void goToPrivacyAndSecurtyScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      PrivacyAndSecurtyScreen.id,
    );
    void goToSettingsScreen(BuildContext context) {
      Navigator.pushNamed(
        context,
        SettingsScreenBody.id,
      );
    }

//------------------------------------------------------------------------------------
    void goToPrivacyAndSecurtyScreen(BuildContext context) {
      Navigator.pushNamed(
        context,
        PrivacyAndSecurtyScreen.id,
      );
    }

    //------------------------------------------------------------------------------------
    void goToCommunityReplyScreen(BuildContext context) {
      Navigator.pushNamed(
        context,
        CommunityReplyScreen.id,
      );
    }
  }

//------------------------------------------------------------------------------------
  void goToWatchHistoryScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      WatchHistoryScreen.id,
    );
  }

//------------------------------------------------------------------------------------
  void goToCreatNewPasswordScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      CreatNewPasswordScreen.id,
    );
  }

  //------------------------------------------------------------------------------------
  void goToDiscoverScreenBody(BuildContext context) {
    Navigator.pushNamed(
      context,
      DiscoverScreenBody.id,
    );
  }
}
