import 'package:emart_app/components/feature_button.dart';
import 'package:emart_app/components/home_button.dart';
import 'package:emart_app/consts/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(children: [
          //--------------------Search bar
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(children: [
                //-------------------1st swiper starting
                VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        viewportFraction: 0.9,
                        //autoPlayAnimationDuration: Duration(seconds: 1),
                        enlargeCenterPage: true,
                        itemCount: brandsLidt.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            brandsLidt[index],
                            fit: BoxFit.fitHeight,
                          ); //.box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(vertical: 9)).make();
                        })
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(EdgeInsets.symmetric(horizontal: 8, vertical: 8))
                    .make(),
                10.heightBox,
                // -----------------------------deals buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      2,
                      (index) => homeButton(
                            height: context.height * 0.15,
                            width: context.screenWidth / 2.5,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index == 0 ? todayDeal : flashSale,
                          )),
                ),
                //--------------------------------2nd swiper
                10.heightBox,
                VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    viewportFraction: 0.6,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    enlargeCenterPage: true,
                    itemCount: secondbrandsLidt.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondbrandsLidt[index],
                        fit: BoxFit.fitHeight,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(vertical: 9))
                          .make();
                    }), //.box.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make(),
                //----------------------------- 3_buttons
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      3,
                      (index) => homeButton(
                            height: context.height * 0.15,
                            width: context.screenWidth / 3.5,
                            icon: index == 0
                                ? icTopCategories
                                : index == 1
                                    ? icBrands
                                    : icTopSeller,
                            title: index == 0
                                ? topCatagories
                                : index == 1
                                    ? brand
                                    : topSellers,
                          )),
                ),
                //----------------
                20.heightBox,
                Align(
                  alignment: Alignment.topLeft,
                  child: featureCatagories.text
                      .color(darkFontGrey)
                      .size(18)
                      .fontFamily(semibold)
                      .make(),
                ),
                //--------------------------------feature catagories
                20.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        3,
                        (index) => Column(
                              children: [
                                featureButton(
                                    icon: featureImagesList1[index],
                                    title: featureTitles1[index]),
                                10.heightBox,
                                featureButton(
                                    icon: featureImagesList2[index],
                                    title: featureTitles2[index]),
                              ],
                            )).toList(),
                  ),
                ),
                //-------------------feature Product
                20.heightBox,
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(color: redColor),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    featureProduct.text.white.fontFamily(bold).size(18).make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(6,
                                    (index) => Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                                        10.heightBox,
                                        "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                        10.heightBox,
                                        "\$600".text.color(redColor).fontFamily(bold).make(),
                                      ],
                                    ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(8)).make()),
                          ),
                        ),
                  ]),
                ),
                //--------------3rd Swiper
                20.heightBox,
                VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    viewportFraction: 0.6,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    enlargeCenterPage: true,
                    itemCount: secondbrandsLidt.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondbrandsLidt[index],
                        fit: BoxFit.fitHeight,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(vertical: 9))
                          .make();
                    }),
                //------------All production section

                20.heightBox,
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8,mainAxisSpacing: 8,mainAxisExtent: 300),
                    itemBuilder: (context,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP5,
                            width: 150,
                            height: 200,
                            fit: BoxFit.cover,),
                          Spacer(),
                          "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                          10.heightBox,
                          "\$600".text.color(redColor).fontFamily(bold).make(),
                        ],
                      ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(12)).make();
                    })

              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
