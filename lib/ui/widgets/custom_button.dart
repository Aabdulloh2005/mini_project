import 'package:flutter/material.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  Function()? onPressed;
  String title;

  CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FloatingActionButton(
        backgroundColor: AppColors.brand500,
        onPressed: onPressed,
        child: CustomText(
          text: title,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
