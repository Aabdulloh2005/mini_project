import 'package:flutter/material.dart';
import 'package:mini_project/data/models/restaurant.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';
import 'package:mini_project/ui/widgets/meal_widget.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(text: "Recommended"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: MealWidget(
                    isMargin: false,
                    height: 170,
                    width: double.infinity,
                    restaurant: Restaurant(
                      foodCategories: [""],
                      name: "",
                      photoUrl: "",
                      stars: 4.4,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
