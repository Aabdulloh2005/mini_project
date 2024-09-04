import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class ProfileInfoWidget extends StatelessWidget {
  final String icon;
  final String text1;
  final CustomText? text2;
  final bool isTrailing;
  final Function()? onTap;

  const ProfileInfoWidget({
    super.key,
    required this.icon,
    required this.text1,
    this.onTap,
    this.isTrailing = false,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset("assets/icons/$icon.svg"),
      title: CustomText(
        text: text1,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      subtitle: text2,
      trailing: isTrailing
          ? const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 30,
            )
          : null,
    );
  }
}
