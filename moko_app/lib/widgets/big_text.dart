import 'package:flutter/material.dart';
import 'package:moko_app/utils/dimensions.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  BigText(
      {Key? key,
      this.color = const Color(0xFF322d2b),
      required this.text,
     this.size = 0,
      this.overflow = TextOverflow.fade})
      : super(key: key);
   Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size== 0? Dimensions.font20:size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
