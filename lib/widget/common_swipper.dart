
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hook_up_rent/widget/common_image.dart';

const List<String> defautimages = [
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg",
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg",
  "http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg"
];
var imgwidth = 750.0;
var imgheight = 424.0;
class CommonSwiper extends StatelessWidget {
  final List<String> images;

  const CommonSwiper({Key? key, this.images = defautimages}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height  =MediaQuery.of(context).size.width/imgwidth*imgheight;
    return Container(
      height: height,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return CommonImage(images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination:  new SwiperPagination(),
        // control:  new SwiperControl(),
      ),
    );
  }
}
