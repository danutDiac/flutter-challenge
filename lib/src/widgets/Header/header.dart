import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/widgets/Header/themeSwitcher.dart';

import '../../theme/colorCodes.dart' as color_constants;

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 30, bottom: 30),
      child: Row(
        children: [
          Text('devfinder',
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.apply(color: color_constants.neutral02Color)),
          const Spacer(),
          ThemeSwitcher()
        ],
      ),
    );
  }
}
