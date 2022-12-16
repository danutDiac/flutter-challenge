import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/widgets/Header/themeSwitcher.dart';

import '../../theme/colorCodes.dart' as color_constants;

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          Text('devfinder',
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.apply(color: color_constants.neutral02Color)),
          const Spacer(),
          const ThemeSwitcher()
        ],
      ),
    );
  }
}
