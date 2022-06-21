import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_seach/datalist.dart';
import 'package:hook_up_rent/widget/common_image.dart';
import 'package:hook_up_rent/widget/common_tag.dart';

class RoomListItem extends StatelessWidget {
  final RoomListItemData data;

  const RoomListItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(
        children: [
          CommonImage(
            data.imageUrl,
            width: 132.5,
            height: 100.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(data.subTitle),
              Wrap(
                children: data.tags.map((e) => CommonTag(e)).toList(),
              ),
              Text(
                '${data.price}元/月',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
