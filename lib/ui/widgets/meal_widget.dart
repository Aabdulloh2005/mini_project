import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/data/models/restaurant.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class MealWidget extends StatelessWidget {
  double? height;
  double? width;
  bool isMargin;
  Restaurant restaurant;
  MealWidget({
    super.key,
    this.height,
    this.width,
    this.isMargin = true,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isMargin ? const EdgeInsets.only(right: 16) : null,
      width: width ?? 260,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height ?? 150,
            width: width ?? 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(restaurant.photoUrl),
              ),
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: restaurant.name,
                fontWeight: FontWeight.w500,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.brand900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("⭐${restaurant.stars}"),
              )
            ],
          )
        ],
      ),
    );
  }
}
