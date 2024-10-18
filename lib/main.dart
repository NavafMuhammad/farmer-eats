import 'package:farmer_eats/presentation/create_account/create_account_screen.dart';
import 'package:farmer_eats/presentation/farm_info/farm_info_screen.dart';
import 'package:farmer_eats/presentation/forgot_password/forgot_password_screen.dart';
import 'package:farmer_eats/presentation/login/login_screen.dart';
import 'package:farmer_eats/presentation/onboarding/onboarding_screen.dart';
import 'package:farmer_eats/presentation/reset_password/reset_password_screen.dart';
import 'package:farmer_eats/presentation/verification/verification_screen.dart';
import 'package:farmer_eats/presentation/verify_otp/verify_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.beVietnamProTextTheme(
            Theme.of(context).textTheme,
          ),
          primaryTextTheme: GoogleFonts.beVietnamProTextTheme(
            Theme.of(context).textTheme,
          )),
      home: OnboardingScreen(),
      initialRoute: "/",
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => OnboardingScreen());
          case '/loginScreen':
            return MaterialPageRoute(builder: (context) => const LoginScreen());
          case '/forgotPasswordScreen':
            return MaterialPageRoute(builder: (context) => const ForgotPasswordScreen());
          case '/verifyOtpScreen':
            return MaterialPageRoute(builder: (context) => const VerifyOtpScreen());
          case '/resetPasswordScreen':
            return MaterialPageRoute(builder: (context) => const ResetPasswordScreen());
          case '/createAccountScreen':
            return MaterialPageRoute(builder: (context) => const CreateAccountScreen());
          case '/farmInfoScreen':
            return MaterialPageRoute(builder: (context) => const FarmInfoScreen());
          case '/verificationScreen':
            return MaterialPageRoute(builder: (context) => const VerificationScreen());
          case '/businessHoursScreen':
            return MaterialPageRoute(builder: (context) => const CreateAccountScreen());
          case '/finalScreen':
            return MaterialPageRoute(builder: (context) => const CreateAccountScreen());
          default:
            return null;
        }
      },
    );
  }
}
