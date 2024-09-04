import 'package:flutter/cupertino.dart';
import 'package:mini_project/core/utils/app_colors.dart';

class CustomText extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  TextAlign? textAlign;
  double? height;
  CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.height,
    this.textAlign,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        color: color ?? AppColors.greyscale600,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
