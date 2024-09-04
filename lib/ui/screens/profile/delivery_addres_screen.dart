import 'package:flutter/material.dart';
import 'package:mini_project/core/utils/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'widgets/delivery_adress_widget.dart';

class DeliveryAddresScreen extends StatefulWidget {
  const DeliveryAddresScreen({super.key});

  @override
  State<DeliveryAddresScreen> createState() => _DeliveryAddresScreenState();
}

class _DeliveryAddresScreenState extends State<DeliveryAddresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Delivery address",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "worksans",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const DeliveryAdressWidget(
              icons: "gps",
              title: "Current address",
              subtitle: "Doyers st 206",
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const DeliveryAdressWidget(
                    icons: "location1",
                    title: "Home",
                    subtitle: "Chilonzor str 100",
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
              "Add new addres",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
