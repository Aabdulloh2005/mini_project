import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/screens/auth/forgot_password_screen.dart';
import 'package:mini_project/ui/screens/auth/register_screen.dart';
import 'package:mini_project/ui/widgets/custom_button.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';
import 'package:mini_project/ui/widgets/custom_textfield.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "Forgot password",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                textAlign: TextAlign.center,
                text:
                    "Enter your phone number. We will send to\n you a code to reset password",
              ),
              const Gap(110),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Email",
                    fontSize: 12,
                  ),
                  const Gap(5),
                  CustomTextfield(
                    controller: _emailController,
                    validator: (p0) {},
                    hintText: "example@mail.com",
                  ),
                ],
              ),
              const Gap(40),
              CustomButton(onPressed: () {}, title: "Send Code"),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: CustomText(
                  text: "Return to login",
                  color: AppColors.info500,
                  fontSize: 16,
                ),
              ),
              const Gap(70),
            ],
          ),
        ),
      ),
    );
  }
}
