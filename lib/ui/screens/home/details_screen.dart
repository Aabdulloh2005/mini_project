import 'package:flutter/material.dart';
import 'package:mini_project/data/services/food_service.dart';
import 'package:mini_project/ui/widgets/category_widget.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class DetailsScreen extends StatelessWidget {
  String resName;
  List<String> categories;
  DetailsScreen({
    super.key,
    required this.resName,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
            onTap: () {
              FoodService().getFoods();
            },
            child: CustomText(text: resName)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryWidget(
                  name: categories[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
