import 'package:flutter/material.dart';
import 'package:input_decoration/string_extensions.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
    keyboardType: TextInputType.emailAddress,
    validator: (value){
      if(!value!.isValidEmail()){
        return 'Lütfen geçerli bir email adresi girin.';
      }
    },
    decoration: const InputDecoration(
      labelText: "Email",
      helperText: "",
      hintText: "email@gmail.com"
    ),
  );
}
