import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';

class DeliveryAdressWidget extends StatefulWidget {
  final String icons;
  final String title;
  final String subtitle;
  const DeliveryAdressWidget({
    super.key,
    required this.icons,
    required this.title,
    required this.subtitle,
  });

  @override
  State<DeliveryAdressWidget> createState() => _DeliveryAdressWidgetState();
}

class _DeliveryAdressWidgetState extends State<DeliveryAdressWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        isTapped = !isTapped;
        setState(() {});
      },
      leading: SvgPicture.asset(
        "assets/icons/${widget.icons}.svg",
      ),
      title: Text(
        widget.title,
       
      ),
      subtitle: Text(
        widget.subtitle,
        style: const TextStyle(
          fontSize: 12,
          color: AppColors.greyscale400,
        ),
      ),
      trailing:
          // ignore: dead_code
          isTapped
              ? const Icon(Icons.check_circle, color: Colors.blue)
              : const Text(""),
    );
  }
}
