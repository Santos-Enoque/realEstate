import 'package:flutter/material.dart';
import 'package:real_state/services/style.dart';

class CustomText extends StatelessWidget {
  final String msg;
  final Color color;
  final double size;
  final FontWeight weight;

  CustomText({@required this.msg,@required this.color,@required this.size,@required this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(msg, style: TextStyle(color: color ?? black, fontSize:  size ?? 16, fontWeight: weight ?? FontWeight.normal),);
  }
}
