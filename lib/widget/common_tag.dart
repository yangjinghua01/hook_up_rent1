import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? BackgroundColor;

  const CommonTag.origin(
    this.title, {
    Key? key,
    this.color = Colors.blueAccent,
    this.BackgroundColor = Colors.grey,
  }) : super(key: key);

  factory CommonTag(String title) {
    switch (title) {
      case '近地铁':
        return CommonTag.origin(
          title,
          color: Colors.red,
          BackgroundColor: Colors.red[50],
        );
      case '集中供暖':
        return CommonTag.origin(
          title,
          color: Colors.blue,
          BackgroundColor: Colors.blue[50],
        );
      case '随时看房':
        return CommonTag.origin(
          title,
          color: Colors.green,
          BackgroundColor: Colors.green[50],
        );
      case '新上':
        return CommonTag.origin(
          title,
          color: Colors.red,
          BackgroundColor: Colors.red[50],
        );
      default:
        return CommonTag.origin(title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.0),
      padding: EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0, bottom: 2.0),
      decoration: BoxDecoration(
          color: BackgroundColor, borderRadius: BorderRadius.circular(8.0)),
      child: Text(
        title,
        style: TextStyle(fontSize: 10, color: color),
      ),
    );
  }
}
