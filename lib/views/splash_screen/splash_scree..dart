
import 'package:emart_app/consts/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScren(){
    Future.delayed(Duration(seconds: 4),(){
      Get.to(()=> LoginScreen());
    });
  }
  @override
  void initState() {
    changeScren();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
        body: Center(
          child: Column(

           children: [
             (context.screenHeight*0.1).heightBox,
             Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(icSplashBg,width: 300,)),
             20.heightBox,
             applogoWidget(),
             20.heightBox,
             SizedBox(height: 20,),
             appname.text.fontFamily(bold).size(22).white.make(),
             Spacer(),
             credits.text.white.fontFamily(semibold).make(),
             30.heightBox
           ],
          ),
        ),
    );
  }
}



