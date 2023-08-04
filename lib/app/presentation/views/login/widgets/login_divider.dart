import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(
          thickness: 3,
          color: Theme.of(context).colorScheme.primary,
        ),
        ),
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Or Login With',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
            ),
        ),
    Expanded(child: Divider(
    thickness: 3,
    color: Theme.of(context).colorScheme.primary,
    ),
    ),
      ],
    );
  }
}

