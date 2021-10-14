import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key}) : super(key: key);
  final String tw =
      'https://banner2.cleanpng.com/20171202/6d6/twitter-png-file-5a22fe5081d054.7955961715122427685317.jpg';
  final String fb =
      'https://www.freepnglogos.com/uploads/logo-facebook-png/logo-facebook-facebook-logo-transparent-png-pictures-icons-and-0.png';
  final String facebook =
      'https://kernel.sr/wp-content/uploads/2020/06/facebook-scalable-graphics-icon-facebook-logo-facebook-logo-png-clip-art.png';
  final String googlePlus =
      'https://png.pngtree.com/element_our/md/20180626/md_5b321c96e404e.jpg';
  final String twitter =
      'https://image.similarpng.com/very-thumbnail/2020/05/Twitter-circular-logo-PNG.png';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildSocialImage(fb),
        buildSocialImage(googlePlus),
        buildSocialImage(tw),
      ],
    );
  }
}

Widget buildSocialImage(String image) {
  double conSize = 40.0;
  return Container(
    height: conSize,
    width: conSize,
    margin: EdgeInsets.only(right: 5.0),
    child: CircleAvatar(
      child: ClipOval(
        child: Image.network(image,
            height: conSize, width: conSize, fit: BoxFit.cover),
      ),
    ),
  );
}
