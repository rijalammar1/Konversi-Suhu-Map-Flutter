import 'package:flutter/material.dart';

class DaftarSuhu extends StatelessWidget {
  const DaftarSuhu({
    Key? key,
    required this.selctDropdown,
    required this.listSuhu,
    required this.onDropChange,
  }) : super(key: key);

  final String selctDropdown;
  final List<String> listSuhu;
  final Function onDropChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: DropdownButton(
          value: selctDropdown,
          isExpanded: true,
          items: listSuhu.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            onDropChange(value);
          }),
    );
  }
}
