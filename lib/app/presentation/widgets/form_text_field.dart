import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {

  final String labelText;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final bool suffixIcon;

  const FormTextField({super.key,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    required this.obscureText,
    required this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {



    return  Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            blurRadius: 7,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: TextField(
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: labelText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),

          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),

          ),

        ),

      ),

    );
  }
}

