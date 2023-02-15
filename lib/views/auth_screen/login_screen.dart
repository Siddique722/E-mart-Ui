import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controlers/auth_controllers.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var controller= Get.put(AuthController());

    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            'Log in to $appname'.text.fontFamily(bold).white.size(10).make(),
            10.heightBox,
            Column(
              children: [
                customtextfield(title: email, hint: emailHint, isPass: false,controller: controller.emailController ),
                customtextfield(title: password, hint: passwordHint,isPass: true,controller: controller.passwordController),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPassword.text.make())),
                5.heightBox,
               ourbutton(
                        color: redColor,
                        title: login,
                        textColor: whiteColor,
                        onPress:
                            (){ Get.offAll(()=> Home());}
                        /*async {await controller.loginmethod(context: context).then((value) {
                            if(value!=null){
                              VxToast.show(context, msg: 'Log in Successfully');
                              Get.offAll(()=> Home());
                            }
                          });
                        }*/
                        )
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                creatnewaccount.text.color(fontGrey).make(),
                ourbutton(
                        color: lightgolden,
                        title: signup,
                        textColor: redColor,
                        onPress: () {
                          Get.to(()=> SignupScreen());
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  List.generate(
                    3,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(
                          socialIconList[index],
                          width: 30,
                      ),
                    ),
                        ),
                  )

                )
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70).shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
