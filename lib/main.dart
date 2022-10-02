import 'package:flutter/material.dart';
import 'package:input_decoration/components/disabled_field.dart';
import 'package:input_decoration/components/email_field.dart';
import 'package:input_decoration/components/multiline_field.dart';
import 'package:input_decoration/components/number_field.dart';
import 'package:input_decoration/components/password_field.dart';
import 'package:input_decoration/components/text_field_row.dart';
import 'package:input_decoration/input_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: CustomInputTheme().theme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Input Decoration Theme'),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(32.0),
            children: [
              PasswordField(),
              NumberField(),
              EmailField(),
              DisabledField(),
              MultilineField(),
              TextFieldRow()
            ]
                .map((child) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: child,
                    ))
                .toList(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final isValid = _formKey.currentState!.validate();
            print("Form is valid: $isValid");
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
