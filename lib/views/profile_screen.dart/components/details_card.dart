import 'package:emart_app/consts/consts.dart';

Widget detailsCard({width, String? count, String? title}) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        "00".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
        5.heightBox,
        "In Your Cart".text.fontFamily(semibold).color(darkFontGrey).make()
      ],
    )
        .box
        .blue100
        .rounded
        .width(width)
        .height(70)
        .padding(const EdgeInsets.all(4))
        .make();
