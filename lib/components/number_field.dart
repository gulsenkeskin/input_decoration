import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:input_decoration/string_extensions.dart';

class NumberField extends StatefulWidget {
  const NumberField({Key? key}) : super(key: key);

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  @override
  Widget build(BuildContext context)=>TextFormField(
    keyboardType: TextInputType.numberWithOptions(
      decimal: true,
      signed: true,
    ),
    validator: (value){
      if(!value!.isValidDouble()){
        return 'Geçerli bir ondalık sayı giriniz';
      }
    },
    maxLength: 10,
    maxLengthEnforcement: MaxLengthEnforcement.enforced,
    decoration: const InputDecoration(
      labelText: 'Number Field',
      helperText: "",
      hintText: "74",
      suffix: Text("kg"),
      // ya da
      // suffixText: "kg"
    ),
  );
}
