import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          Navigator.of(context).pushReplacement(
            CupertinoPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brand500,
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          height: 107,
          width: 140,
        ),
      ),
    );
  }
}
