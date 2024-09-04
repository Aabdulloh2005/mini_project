import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/screens/auth/forgot_password_screen.dart';
import 'package:mini_project/ui/screens/auth/register_screen.dart';
import 'package:mini_project/ui/widgets/custom_button.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';
import 'package:mini_project/ui/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: "Log In",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(40),
                _getTextField(
                  hintText: "example@mail.com",
                  label: "Email",
                  controller: _emailController,
                ),
                const Gap(20),
                _getTextField(
                  hintText: "Enter password",
                  label: "Password",
                  controller: _passwordController,
                ),
                const Gap(20),
                Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(6),
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: CustomText(
                        text: "Forgot password?",
                        color: AppColors.info500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Gap(40),
                CustomButton(onPressed: () {}, title: "Log In"),
                const Gap(10),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: "Don't have account? ",
                      style: TextStyle(
                        color: AppColors.greyscale400,
                        fontSize: 16.0,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                            color: AppColors.brand500,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getTextField({
    required String label,
    required String hintText,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label,
          fontSize: 12,
        ),
        const Gap(5),
        CustomTextfield(
          controller: controller,
          validator: (p0) {},
          hintText: hintText,
        ),
      ],
    );
  }
}
