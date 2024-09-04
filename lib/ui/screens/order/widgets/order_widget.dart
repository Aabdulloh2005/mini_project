import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

import '../../../../core/utils/app_colors.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 56,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/popular.png"),
            ),
          ),
        ),
        const Gap(15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "McDonalds-Combo menu",
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              const Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "\$34.60",
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    text: "On the way",
                    fontWeight: FontWeight.w500,
                    color: AppColors.info500,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
