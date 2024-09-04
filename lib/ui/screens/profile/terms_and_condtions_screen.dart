import 'package:flutter/material.dart';
import 'package:mini_project/ui/widgets/custom_text.dart';

class TermsAndCondtionsScreen extends StatelessWidget {
  const TermsAndCondtionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "TermsAndCondtionsScreen"),
      ),
    );
  }
}
