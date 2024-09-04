import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/screens/order/widgets/order_widget.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';
import 'package:mini_project/ui/widgets/tile_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: CustomText(
              text: "Orders",
              fontSize: 20,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  TileWidget(
                    title: "Current order",
                    trailingText: "",
                    color: AppColors.greyscale400,
                    isPadding: false,
                  ),
                  const OrderWidget(),
                  const Gap(10),
                  TileWidget(
                    title: "Past orders",
                    trailingText: "",
                    color: AppColors.greyscale400,
                    isPadding: false,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: AppColors.greyscale100),
                    ),
                  ),
                  child: const OrderWidget(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
