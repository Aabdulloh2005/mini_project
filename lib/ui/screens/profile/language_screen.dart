import 'package:flutter/material.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "LanguageScreen"),
      ),
    );
  }
}