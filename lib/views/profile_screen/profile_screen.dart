import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controlers/auth_controllers.dart';

import 'components/details_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 16),
          child: Column(children: [
            //--------edit profile section

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                  alignment: Alignment.topRight,
                  child: const Icon(
                    Icons.edit,
                    color: whiteColor,
                  )).onTap(() {}),
            ),

            //------users detail section
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.heightBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.fontFamily(semibold).white.make(),
                        "custom@example.com".text.white.make(),
                      ],
                    ),
                  ),
                  //--logout button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor)),
                    onPressed: ()async {
                      await Get.put(AuthController()).signoutMethod(context);
                      Get.offAll(()=> LoginScreen());
                    },
                    child: "LogOut".text.fontFamily(semibold).white.make(),
                  ),
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.9),
                detailsCard(
                    count: "32",
                    title: "in your wishlist",
                    width: context.screenWidth / 3.9),
                detailsCard(
                    count: "675",
                    title: "your orders",
                    width: context.screenWidth / 3.9),
              ],
            ),
            //buttons section
            ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: lightGrey,
                      );
                    },
                    itemCount: profieButtonList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(profilebuttonsIcons[index],width: 22,),
                        title: profieButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                      );
                    })
                .box
                .white
                .rounded
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .shadowSm.margin(const EdgeInsets.all(12))
                .make()
            .box.color(redColor).make(),
          ]),
        ),
      ),
    ));
  }
}
