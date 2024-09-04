import 'package:flutter/material.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class TileWidget extends StatelessWidget {
  String title;
  String trailingText;
  Color? color;
  Function()? onTap;
  bool isPadding;
  TileWidget(
      {this.color,
      super.key,
      required this.title,
      required this.trailingText,
      this.onTap,
      this.isPadding = true});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      contentPadding: isPadding
          ? const EdgeInsets.symmetric(horizontal: 16)
          : EdgeInsets.zero,
      title: CustomText(
        text: title,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color,
      ),
      trailing: InkWell(
        onTap: onTap,
        child: CustomText(
          text: trailingText,
          color: AppColors.greyscale400,
          fontSize: 12,
        ),
      ),
    );
  }
}
