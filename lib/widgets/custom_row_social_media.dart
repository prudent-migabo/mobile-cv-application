import 'package:flutter/material.dart';

class CustomRowSocialMedia extends StatelessWidget {
  const CustomRowSocialMedia({Key? key, required this.image, required this.text, this.height, this.width}) : super(key: key);
  final String image;
  final String text;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
            image,
          height: height,
          width: width,
        ),
        const SizedBox(width: 5,),
        Text(text, style: TextStyle(color: Colors.blue.shade900),),
      ],
    );
  }
}
