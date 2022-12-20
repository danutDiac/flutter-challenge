import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../assets/icons2/spinner_icons.dart';
import '../../theme/color_codes.dart' as color_constants;

class UserDetailsLoading extends StatefulWidget {
  const UserDetailsLoading({super.key});

  @override
  State<UserDetailsLoading> createState() => _UserDetailsLoading();
}

class _UserDetailsLoading extends State<UserDetailsLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat();

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: const Icon(
        Spinner.spin5,
        color: color_constants.primary02Color,
        size: 30,
      ),
    );
  }
}
