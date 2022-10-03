import 'package:flutter/material.dart';

class TextFieldRow extends StatelessWidget {
  const TextFieldRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                helperText: "", hintText: "Row", labelText: "Row 1"),
          ),
          TextFormField(
            decoration: const InputDecoration(
                helperText: "", hintText: "Row", labelText: "Row 2"),
          ),
        ],
      );
}
