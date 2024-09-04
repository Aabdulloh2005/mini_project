import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CardWidgets extends StatefulWidget {
  final String icons;
  final String title;
  final String subtitle;
  const CardWidgets({
    super.key,
    required this.icons,
    required this.title,
    required this.subtitle,
  });

  @override
  State<CardWidgets> createState() => _CardWidgetsState();
}

class _CardWidgetsState extends State<CardWidgets> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text(
                "Edit Card",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                Column(
                  children: [],
                )
              ],
            );
          },
        );
      },
      leading: Image.asset(
        widget.icons,
        width: 20,
        height: 20,
      ),
      title: Text(
        widget.title,
        style: const TextStyle(
          fontFamily: "worksans",
        ),
      ),
      subtitle: Text(
        widget.subtitle,
        style: const TextStyle(
          fontSize: 12,
          fontFamily: "worksans",
          color: AppColors.greyscale400,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
          size: 20,
        ),
      ),
    );
  }
}
