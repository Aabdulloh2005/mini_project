import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class CategoryWidget extends StatelessWidget {
  String name;

  CategoryWidget({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 16, top: 8, bottom: 8),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyscale100,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/icons/hot_dog.png",
            height: 24,
            width: 24,
          ),
          const Gap(5),
          CustomText(
            text: name,
          ),
        ],
      ),
    );
  }
}
