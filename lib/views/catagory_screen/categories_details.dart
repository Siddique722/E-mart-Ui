import 'package:emart_app/consts/consts.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title?.text.fontFamily(bold).white.make(),
        ),
        body:  Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) =>
                  "Baby".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered().box.white.rounded.size(150, 60).margin(EdgeInsets.symmetric(horizontal: 4)).make(),
                  ),
                ),
              ),

              //-------------------items container
              20.heightBox,
              Expanded(child: Container(
                  color: lightGrey,
              child: GridView.builder(
                physics:  BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8),
                  itemBuilder: ( context, index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5,
                          width: 200,
                          height: 150,
                          fit: BoxFit.cover,),
                        "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "\$600".text.color(redColor).fontFamily(bold).make(),
                      ],
                    ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(EdgeInsets.all(12)).make().onTap(() { Get.to(()=> ItemDetails(title: 'Dummy item'));});
                  })
              )),
            ],
          ),
        ),
      )
    );
  }
}
