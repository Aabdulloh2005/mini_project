import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/core/utils/app_constants.dart';
import 'package:mini_project/ui/screens/profile/about_app_screen.dart';
import 'package:mini_project/ui/screens/profile/delivery_addres_screen.dart';
import 'package:mini_project/ui/screens/profile/edit_profile_screen.dart';
import 'package:mini_project/ui/screens/profile/language_screen.dart';
import 'package:mini_project/ui/screens/profile/notification_screen.dart';
import 'package:mini_project/ui/screens/profile/payment_method_screen.dart';
import 'package:mini_project/ui/screens/profile/promocode_screen.dart';
import 'package:mini_project/ui/screens/profile/terms_and_condtions_screen.dart';
import 'package:mini_project/ui/screens/profile/widgets/profile_info_widget.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String?> subtitle = [
    "NYC, Broadway ave 79",
    "Mastercard ****7890",
    "English",
    null,
    "You have 2 new promo codes",
    null,
    null
  ];
  final List<Widget> _screens = [
    const DeliveryAddresScreen(),
    const PaymentMethodScreen(),
    const LanguageScreen(),
    const NotificationScreen(),
    const PromocodeScreen(),
    const TermsAndCondtionsScreen(),
    const AboutAppScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "worksans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const EditProfileScreen(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/icons/edit.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: 104,
              height: 104,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://clipart-library.com/2023/606-6064920_manager-clipart-store-manager-cartoon-face-with-glasses.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Alex Rebotix",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "worksans",
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ProfileInfoWidget(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => _screens[index],
                        ),
                      );
                    },
                    icon: AppConstants.profileIcons[index],
                    text1: AppConstants.profileList[index],
                    text2: subtitle[index] != null
                        ? CustomText(
                            text: subtitle[index]!,
                            color: AppColors.greyscale400,
                            fontSize: 12,
                          )
                        : null,
                    isTrailing: index < 4,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
