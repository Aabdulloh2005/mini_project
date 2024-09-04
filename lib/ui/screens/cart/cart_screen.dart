import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:mini_project/ui/screens/order/widgets/order_widget.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';
import 'package:mini_project/ui/widgets/tile_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              centerTitle: true,
              title: CustomText(
                text: "Cart",
                fontSize: 20,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList.builder(
                itemCount: 3,
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
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "\$32.60",
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          CustomText(
                            text: "Total",
                            color: AppColors.greyscale400,
                          ),
                        ],
                      ),
                      const Gap(16),
                      SizedBox(
                        width: double.infinity,
                        child: FloatingActionButton(
                          elevation: 3,
                          backgroundColor: AppColors.brand500,
                          onPressed: () {},
                          child: CustomText(
                            text: "Go to checkout",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
