import 'package:flutter/material.dart';

class MySocialButtons extends StatelessWidget {

  final Function()? onTap;
  final String imagePath;

  const MySocialButtons(
      {
        super.key,
        required this.onTap,
        required this.imagePath
      }
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary
              ),
              borderRadius: BorderRadius.circular(16),
              color: Colors.white
            ),
            child: Image.asset(imagePath,
            width: 30,
            height: 30,),
          ),
        )
      ),

  );
  }
}
