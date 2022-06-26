import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  final String title;
  const CommonTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      child: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
    );
  }
}
