import 'package:flutter/material.dart';

import '../../theme/colorCodes.dart' as color_constants;

class DarkThemeButtonDetails extends StatefulWidget {
  const DarkThemeButtonDetails({super.key});

  @override
  State<DarkThemeButtonDetails> createState() => _DarkThemeButtonDetailsState();
}

class _DarkThemeButtonDetailsState extends State<DarkThemeButtonDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(
              right: 16,
            ),
            child: const Text('DARK',
                style: TextStyle(
                    fontSize: 13,
                    color: color_constants.tertiaryColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5))),
        Transform.rotate(
            angle: 150,
            child: const Icon(
              Icons.nightlight,
              color: color_constants.tertiaryColor,
              size: 20,
            )),
      ],
    );
  }
}
