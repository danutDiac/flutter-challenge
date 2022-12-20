import 'dart:developer';
import 'package:flutter/material.dart';

import '../../theme/color_codes.dart' as color_constants;

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.onSearch});
  final Function() onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      child: TextButton(
        onPressed: onSearch,
        style: TextButton.styleFrom(
            backgroundColor: color_constants.primary02Color,
            padding: const EdgeInsets.only(
                top: 12.5, bottom: 12.5, left: 18, right: 18),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: const Text(
          'Search',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
