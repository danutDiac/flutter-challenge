import 'package:flutter/material.dart';

import 'package:flutter_challenge/src/theme/theme_manager.dart';
import 'package:flutter_challenge/src/widgets/Header/dark_button_details.dart';
import 'package:flutter_challenge/src/widgets/Header/light_button_details.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(builder: (context, theme, child) {
      return TextButton(
        onPressed: theme.isDark() ? theme.setLightMode : theme.setDarkMode,
        child: theme.isDark()
            ? const LightThemeButtonDetails()
            : const DarkThemeButtonDetails(),
      );
    });
  }
}
