import 'package:flutter/material.dart';

import '../../assets/icons/search.dart';
import '../../theme/color_codes.dart' as color_constants;
import 'search_button.dart';

class SearchBar extends StatefulWidget {
  const SearchBar(
      {super.key,
      required this.onSearch,
      required this.resetNoResults,
      this.noResults = false});
  final Function(String text) onSearch;
  final Function() resetNoResults;
  final bool noResults;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool _isSearchDisabled = true;
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
                style: Theme.of(context).textTheme.headline4,
                onChanged: (value) => {
                  setState(() {
                    _isSearchDisabled = value.isEmpty;
                    text = value;
                  }),
                  widget.resetNoResults()
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      child: Icon(
                        Search.search,
                        color: color_constants.primary02Color,
                        size: 20,
                      ),
                    ),
                    suffixText: widget.noResults ? 'No results' : null,
                    suffixStyle: const TextStyle(
                      color: color_constants.errorColor,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                    suffixIcon: SearchButton(
                      isDisabled: _isSearchDisabled,
                      onSearch: () => widget.onSearch(text),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    fillColor: Theme.of(context).scaffoldBackgroundColor,
                    filled: true,
                    hintText: 'Search GitHub username',
                    hintStyle: Theme.of(context).textTheme.headline4),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a name now!';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
