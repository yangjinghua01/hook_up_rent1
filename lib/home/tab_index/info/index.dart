import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;

  const Info({Key? key, this.showTitle = false, this.dataList = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if(showTitle)Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10.0),
            child: Text('最新资讯',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
          ),
          Column(
            children: dataList.map((item) => ItemWidget(data:item ,)).toList(),
          )
        ],
      ),
    );
  }
}
