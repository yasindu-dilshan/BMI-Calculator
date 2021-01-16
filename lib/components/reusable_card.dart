import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  final Color color;
  final Function onPress;
  ReusableCard({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          margin: EdgeInsets.all(10.0),
          child: cardChild,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color,
          )),
    );
  }
}
