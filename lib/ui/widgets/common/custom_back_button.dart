import 'package:betuptip/ui/common/app_asset.dart';
import 'package:flutter/material.dart';

class BkButton extends StatelessWidget {
  const BkButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // Palette? palette = Theme.of(context).extension<Palette>();
    return IconButton(
        icon: Image.asset(
          AppAssets.backiconPng,
          width: 24,
          height: 24,
        ),
        onPressed: onPressed);
  }
}
