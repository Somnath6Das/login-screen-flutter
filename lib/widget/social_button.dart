import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive/pallet.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;
  const SocialButton(
      {required this.iconPath,
      required this.label,
      this.horizontalPadding = 100,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Pallet.whiteColor,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Pallet.whiteColor, fontSize: 17),
      ),
      style: TextButton.styleFrom(
          padding:
              EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Pallet.borderColor, width: 3),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
