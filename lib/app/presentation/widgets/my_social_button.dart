import 'package:flutter/material.dart';

class MySocialButton extends StatelessWidget {

  final Function()? onTap;
  final String imagepath;


  const MySocialButton({

    super.key,
    required this.onTap,
    required this.imagepath


  });

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child:Padding(
          padding:  const  EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Image.asset(imagepath,
            width: 30,
            height: 30,
            ),
          ),
        ),
      ),

    );
  }
}
