import 'package:flutter/material.dart';

class TableElement {
  final String rowName;
  final String rowValue;
  TableElement({required this.rowName, required this.rowValue});
}

class SingleRowTableWithBackground extends StatelessWidget {
  const SingleRowTableWithBackground({super.key, required this.elements});
  final List<TableElement> elements;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).backgroundColor),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: elements.map((element) {
            return (Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    element.rowName,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Text(
                  element.rowValue,
                  style: Theme.of(context).textTheme.headline1,
                )
              ],
            ));
          }).toList()),
    );
  }
}
