import 'package:flutter/material.dart';

import '../../theme/color_codes.dart' as color_constants;

class LightThemeButtonDetails extends StatefulWidget {
  const LightThemeButtonDetails({super.key});

  @override
  State<LightThemeButtonDetails> createState() =>
      _LightThemeButtonDetailsState();
}

class _LightThemeButtonDetailsState extends State<LightThemeButtonDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(
              right: 16,
            ),
            child: const Text('LIGHT',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5))),
        Transform.rotate(
            angle: 150,
            child: const Icon(
              Icons.sunny,
              color: Colors.white,
              size: 20,
            )),
      ],
    );
  }
}
