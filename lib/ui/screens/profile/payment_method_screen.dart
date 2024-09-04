import 'package:flutter/material.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'widgets/card_widgets.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "PaymentMethodScreenent method",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "worksans",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return CardWidgets(
                    icons: "assets/images/py${index + 1}.png",
                    title: "Payoneer",
                    subtitle: "Mastercard *** 7589",
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ZoomTapAnimation(
        onTap: () {},
        child: Container(
          width: 328,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.brand500,
          ),
          child: const Center(
            child: Text(
              "Add new card",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
