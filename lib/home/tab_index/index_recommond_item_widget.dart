import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/widget/common_image.dart';

import 'index_recommond_data.dart';

class IndexRecommondItemWidget extends StatelessWidget {
  final IndexRecommendItem data;

  const IndexRecommondItemWidget({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(data.navigateUrl);
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: (MediaQuery.of(context).size.width-10.0*3)/2,
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [Text(data.title,style: TextStyle(fontWeight: FontWeight.w600),),
                Text(data.subTilte,style: TextStyle(fontWeight: FontWeight.w600),)],
            ),
            CommonImage(data.imageUri,width: 55.0,)
          ],
        ),
      ),
    );
  }
}
