import 'package:flutter/material.dart';

import '../../assets/icons/custom_icons.dart';
import '../../theme/color_codes.dart' as color_constants;
import 'search_button.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key, required this.onSearch});
  final Function(String text) onSearch;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Flexible(
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: color_constants.boxShadow,
                      blurRadius: 30,
                      offset: Offset(0, 16),
                      spreadRadius: -10),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    child: Icon(
                      CustomIcons.search,
                      color: color_constants.primary02Color,
                      size: 20,
                    ),
                  ),
                  suffixIcon: SearchButton(
                    onSearch: () => widget.onSearch(text),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search GitHub username',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a name now!';
                  }
                  return null;
                },
                onChanged: (value) => {
                  setState(() {
                    text = value;
                  })
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}