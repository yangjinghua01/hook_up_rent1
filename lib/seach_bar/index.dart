import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/widget/common_image.dart';

class SeachBar extends StatefulWidget {
  final bool? showLoaction; //展示位置按钮
  final Function? goBackCallBack; //回退函数
  final String? inputValue; //搜索框输入值
  final String? defaultInputValue; //搜索框默认值
  //取消按钮
  final Function? onCancel;

  //展示地图按钮
  final bool? showMap;

  //用户电弧搜索框处发
  final Function? onSeach;

  //用户输入搜索关键词点击回调
  final ValueChanged<String>? onSeachSubmit;

  SeachBar(
      {this.showLoaction,
      this.goBackCallBack,
      this.inputValue = '',
      this.defaultInputValue = '请输入搜索词',
      this.onCancel,
      this.showMap,
      this.onSeach,
      this.onSeachSubmit});

  @override
  _SeachBarState createState() => _SeachBarState();
}

class _SeachBarState extends State<SeachBar> {
  String _seachWord = '';
  late TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController(text: widget.inputValue);
  }

  void _onClean() {
    _controller.clear();
    setState(() {
      _seachWord = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.showLoaction != null)
            Padding(
              padding: EdgeInsets.only(right: 10.0, top: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.room,
                      color: Colors.green,
                      size: 16.0,
                    ),
                    Text(
                      "成都",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          if (widget.goBackCallBack != null)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.black87,
                ),
              ),
            ),
          Expanded(
              child: Container(
            height: 34,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(14.0)),
            margin: EdgeInsets.only(right: 10.0),
            child: TextField(
              onTap: () {
                widget.onSeach;
              },
              onSubmitted: widget.onSeachSubmit,
              controller: _controller,
              style: TextStyle(fontSize: 14),
              onChanged: (String value) {
                setState(() {
                  _seachWord = value;
                });
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "请输入搜索词",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                  contentPadding: EdgeInsets.only(top: 1.0, left: -10),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(top: 4.0, left: 8.0),
                    child: Icon(
                      Icons.search,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: _onClean,
                    child: Icon(
                      Icons.clear,
                      size: 18,
                      color: _seachWord == '' ? Colors.grey[200] : Colors.grey,
                    ),
                  )),
            ),
          )),
          if (widget.onCancel != null)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    "取消",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
          if (widget.showMap != null)
            CommonImage('static/icons/widget_search_bar_map.png')
        ],
      ),
    );
  }
}
