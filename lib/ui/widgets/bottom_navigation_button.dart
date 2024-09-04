import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project/core/utils/app_colors.dart';

class BottomNavigationButton extends StatelessWidget {
  final String buttonText;
  final String icoPath;
  final bool isTapped;
  final void Function() onTap;

  const BottomNavigationButton({
    super.key,
    required this.buttonText,
    required this.icoPath,
    required this.isTapped,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icoPath,
            colorFilter: ColorFilter.mode(
                isTapped ? AppColors.greyscale900 : AppColors.greyscale400,
                BlendMode.srcIn),
          ),
          Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'WorkSans',
              fontSize: 12,
              color: isTapped ? AppColors.greyscale900 : AppColors.greyscale400,
            ),
          ),
        ],
      ),
    );
  }
}
