import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_index/info/index.dart';
import 'package:hook_up_rent/home/tab_seach/datalist.dart';
import 'package:hook_up_rent/room_detail/data.dart';
import 'package:hook_up_rent/widget/common_swipper.dart';
import 'package:hook_up_rent/widget/common_tag.dart';
import 'package:hook_up_rent/widget/commont_title.dart';
import 'package:share/share.dart';

import '../room_appliance.dart';

class RoomDetailPage extends StatefulWidget {
  final String roomId;

  RoomDetailPage(this.roomId);

  @override
  State<RoomDetailPage> createState() => _RoomDetailPageState();
}

class _RoomDetailPageState extends State<RoomDetailPage> {
  late RoomDetailData data;
  bool isLike = false; // 是否收藏
  bool showAllText = false; // 是否展开
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = defaultData;
  }

  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as RoomListItemData;
    var showTextTool = data.subTitle.length > 100;
    if (null == data) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('房屋详情页面${widget.roomId}'),
        actions: [
          IconButton(
              onPressed: () {
                Share.share('https://www.baidu.com');
              },
              icon: Icon(Icons.share))
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              CommonSwiper(images:data.houseImgs),
              CommonTitle(title: data.title),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      data.price.toString(),
                      style: const TextStyle(fontSize: 20, color: Colors.pink),
                    ),
                    const Text(
                      '元/月(押一付三)',
                      style: TextStyle(fontSize: 14, color: Colors.pink),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, top: 6, bottom: 6),
                child: Wrap(
                  spacing: 4,
                  children: data.tags.map((item) => CommonTag(item)).toList(),
                ),
              ),
              const Divider(color: Colors.grey, indent: 10, endIndent: 10),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 6),
                child: Wrap(
                  runSpacing: 10,
                  children: [
                    BaseInfoItem('面积：${data.size}平方米'),
                    BaseInfoItem('楼层：${data.floor}'),
                    BaseInfoItem('户型：${data.roomType}'),
                    const BaseInfoItem('装修：精装'),
                  ],
                ),
              ),
              CommonTitle(title: '房屋配置'),
              RoomApplicanceList(data.applicances),
              CommonTitle(title: '房屋概况'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Text(data.subTitle, maxLines: showAllText ? 5 : null),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (showTextTool)
                          GestureDetector(
                            onTap: () => setState(() {
                              showAllText = !showAllText;
                            }),
                            child: Row(
                              children: [
                                Text(showTextTool ? '展开' : '收起'),
                                Icon(showAllText
                                    ? Icons.keyboard_arrow_down
                                    : Icons.keyboard_arrow_up)
                              ],
                            ),
                          )
                        else
                          Container(),
                        GestureDetector(
                            onTap: () => Navigator.pushNamed(context, 'test'),
                            child: const Text('举报')),
                      ],
                    )
                  ],
                ),
              ),

              CommonTitle(title: '猜你喜欢'),
              const Info(),
              const SizedBox(height: 100),
            ],
          ),
          Positioned(
              width: MediaQuery.of(context).size.width,
              height: 80,
              bottom: 0,
              child: Container(
                  padding:
                      EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLike =!isLike;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 40,
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                isLike?Icons.star:Icons.star_border,
                                size: 24,
                                color: isLike?Colors.green:Colors.black,
                              ),
                              Text(
                                isLike?'已收藏':"为收藏",
                                style: TextStyle(fontSize: 12.0),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 50,
                            decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(6.0)),
                            child: Center(child:Text('联系房东',style: TextStyle(color: Colors.white),))
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0),
                              height: 50,
                              decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(6.0)),
                              child: Center(child:Text('预约看房',style: TextStyle(color: Colors.white),))
                          ),
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
class BaseInfoItem extends StatelessWidget {
  final String content;

  const BaseInfoItem(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 3 * 10) / 2,
      child: Text(content),
    );
  }
}
