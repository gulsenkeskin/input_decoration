import 'package:flutter/material.dart';

class MultilineField extends StatelessWidget {
  const MultilineField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        maxLines: 5,
        decoration: InputDecoration(
            helperText: "",
            hintText: "Multiline",
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.info_outline),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("Multiline"),
                )
              ],
            )),
      );
}
