import 'package:flutter/material.dart';
import 'package:hook_up_rent/widget/common_image.dart';
import 'index_navigator_item.dart';

class IndexNacigator extends StatelessWidget {
  const IndexNacigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:indexNavigatorItemList.map((item) => InkWell(
                    onTap: () {
                      item.onTap(context);
                    },
                    child: Column(
                      children: [
                        CommonImage(item.imgeUrl,width: 47.5,),
                        Text(item.title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.0),)
                      ],
                    ),
                  ))
              .toList()

      ),
    );
  }
}
