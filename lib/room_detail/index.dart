import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomId;

  RoomDetailPage(this.roomId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('房屋详情页面${roomId}'),),
    );
  }
}
