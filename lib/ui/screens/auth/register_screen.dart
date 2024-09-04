import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/widgets/custom_button.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';
import 'package:mini_project/ui/widgets/custom_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
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
                  text: "Sign Up",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(40),
                _getTextField(
                  hintText: "John",
                  label: "Name",
                  controller: _nameController,
                ),
                const Gap(20),
                _getTextField(
                  hintText: "example@mail.com",
                  label: "Email",
                  controller: _emailController,
                ),
                const Gap(20),
                _getTextField(
                  hintText: "+0 000 000 00 00",
                  label: "Phone",
                  controller: _phoneController,
                ),
                const Gap(20),
                _getTextField(
                  hintText: "Enter password",
                  label: "Password",
                  controller: _passwordController,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.brand500,
                      side: const BorderSide(color: Colors.grey, width: 2),
                      value: false,
                      onChanged: (value) {},
                    ),
                    CustomText(
                      text: "By signing up you agree terms and conditions",
                      fontSize: 12,
                      color: AppColors.greyscale400,
                    ),
                  ],
                ),
                const Gap(40),
                CustomButton(onPressed: () {}, title: "Register"),
                const Gap(10),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: "Already have account? ",
                      style: TextStyle(
                        color: AppColors.greyscale400,
                        fontSize: 16.0,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign In",
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
