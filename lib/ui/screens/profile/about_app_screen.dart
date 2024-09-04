import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(text: "About us"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomText(
                textAlign: TextAlign.center,
                text: "1.9.4",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              CustomText(
                textAlign: TextAlign.center,
                text: "Current version",
                color: AppColors.greyscale400,
              ),
              const Divider(
                height: 40,
                color: AppColors.greyscale200,
              ),
              _returnWidget("Short about us",
                  "Bibendum sit eu morbi velit praesent. Fermentum mauris fringilla vitae feugiat vel sit blandit quam. In mi sodales nisl eleifend duis porttitor. Convallis euismod facilisis neque eget praesent diam in nulla. Faucibus interdum vulputate rhoncus mauris id facilisis est nunc habitant. Velit posuere facilisi tortor sed. "),
              const Gap(40),
              _returnWidget("Vision",
                  "Lectus a velit sed pretium egestas integer lacus, mi. Risus eget venenatis at amet sed. Fames rhoncus purus ornare nulla. Lorem dolor eget sagittis mattis eget nam. Nulla nisi egestas nisl nibh eleifend luctus."),
            ],
          ),
        ),
      ),
    );
  }

  Widget _returnWidget(
    String title,
    String info,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          textAlign: TextAlign.start,
          text: title,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        const Gap(20),
        CustomText(
          height: 2,
          text: info,
          fontSize: 16,
        ),
      ],
    );
  }
}
