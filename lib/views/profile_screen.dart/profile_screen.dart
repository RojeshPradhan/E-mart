import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen.dart/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
          body: SafeArea(
              child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: const Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.edit, color: whiteColor),
          ).onTap(() {}),
        ),
        Padding(
          padding: const EdgeInsets.all(7.5),
          child: Row(
            children: [
              Image.asset(imgProfile2, width: 85, fit: BoxFit.cover)
                  .box
                  .roundedFull
                  .clip(Clip.antiAlias)
                  .make(),
              20.widthBox,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Sugafree".text.fontFamily(semibold).white.make(),
                  "Sugafree@example.com".text.white.make(),
                  "Sugafree@example.com".text.white.make()
                ],
              )),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: whiteColor)),
                  onPressed: () {},
                  child: "logout".text.white.make())
            ],
          ),
        ),
        20.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            detailsCard(
                count: "00",
                title: "In Your Cart",
                width: context.screenWidth / 3.4),
            detailsCard(
                count: "32",
                title: "In Your Wishlist",
                width: context.screenWidth / 3.4),
            detailsCard(
                count: "609",
                title: "Your Orders",
                width: context.screenWidth / 3.4),
          ],
        ),
        ListView.separated(
          shrinkWrap: true,
          separatorBuilder: ((context, index) {
            return const Divider(
              color: lightGrey,
            );
          }),
          itemCount: profileButtonsList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Image.asset(
                profileButtonsIcon[index],
                width: 22,
              ),
              title: profileButtonsList[index]
                  .text
                  .fontFamily(bold)
                  .color(darkFontGrey)
                  .make(),
            );
          },
        )
            .box
            .white
            .rounded
            .margin(const EdgeInsets.all(12))
            .padding(const EdgeInsets.symmetric(horizontal: 16))
            .shadowSm
            .make()
            .box
            .color(redColor)
            .make()
      ]))),
    );
  }
}
