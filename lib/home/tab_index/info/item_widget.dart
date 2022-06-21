import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_index/info/data.dart';
import 'package:hook_up_rent/widget/common_image.dart';

class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
      child: Row(
        children: [
          CommonImage(data.imageUrl,width: 120.0,height: 90.0,),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Container(
                 alignment: Alignment.centerLeft,
                 child:  Text(data.title,style: TextStyle(fontWeight: FontWeight.w600),),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(data.source,style: TextStyle(color: Colors.black),),
                    Text(data.time,style: TextStyle(color: Colors.black),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
