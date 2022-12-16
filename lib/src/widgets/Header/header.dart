import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/widgets/Header/theme_switcher.dart';

import '../../theme/color_codes.dart' as color_constants;

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          Text('devfinder', style: Theme.of(context).textTheme.headlineLarge),
          const Spacer(),
          const ThemeSwitcher()
        ],
      ),
    );
  }
}
