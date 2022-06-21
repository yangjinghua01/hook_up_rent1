import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'index_recommond_data.dart';
import 'index_recommond_item_widget.dart';

class IndexRecommond extends StatelessWidget {
  final List<IndexRecommendItem> datalist;

  const IndexRecommond({Key? key, this.datalist = indexRecommendData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("房屋推荐",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
              Text("更多",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),)
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: datalist.map((item) => IndexRecommondItemWidget(data: item,)).toList(),
          )
        ],
      ),
    );
  }
}
