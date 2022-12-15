import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/theme/themeManager.dart';
import 'package:provider/provider.dart';

import '../theme/colorCodes.dart' as color_constants;

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(builder: (context, theme, child) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 30, bottom: 30),
        child: Row(
          children: [
            Text('devfinder',
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.apply(color: color_constants.neutral02Color)),
            const Spacer(),
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
            TextButton(
                onPressed:
                    theme.isDark() ? theme.setLightMode : theme.setDarkMode,
                child: Transform.rotate(
                  angle: 150,
                  child: const Icon(
                    Icons.nightlight,
                    color: color_constants.tertiaryColor,
                    size: 20,
                  ),
                ))
          ],
        ),
      );
    });
  }
}
