import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controlers/auth_controllers.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
 bool? ischeck=false;
 var controller= Get.put(AuthController());

 //text controller

 var nameController =TextEditingController();
 var emailController =TextEditingController();
 var passwordController =TextEditingController();
 var retypepasswordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
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
            'Join the $appname'.text.fontFamily(bold).white.size(10).make(),
            10.heightBox,
            Column(
              children: [
                customtextfield(title: name, hint: nameHint,controller:  nameController,isPass:  false),
                customtextfield(title: emailHint, hint: email,controller: emailController,isPass:  false),
                customtextfield(title: password, hint: passwordHint,controller: passwordController,isPass:  true),
                customtextfield(title: retypePassword, hint: retypePasswordHint,controller: retypepasswordController,isPass:  true),
                Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        Checkbox(
                            checkColor: redColor,
                            value: ischeck, onChanged: (newValue){
                              setState((){ischeck=newValue!;});

                        }),
                        10.heightBox,
                        Expanded(
                          child: RichText(text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'I agree to the',
                                style:  TextStyle(fontFamily: regular,color: fontGrey)),
                                TextSpan(
                                text: 'Terms and Condition',
                                style: TextStyle(fontFamily: regular,color: redColor)),
                              TextSpan(
                                text: '&',
                                style:  TextStyle(fontFamily: regular,color: fontGrey)),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(fontFamily: regular,color: redColor),),
                            ]
                          )  ),
                        ),
                      //  TextButton(onPressed: () {}, child: forgetPassword.text.make()),
                      ],
                    )),
                5.heightBox,
                ourbutton(
                         color: ischeck==true? redColor: lightgolden,
                        title: signup,
                        textColor:ischeck==true? whiteColor : redColor,
                        onPress: (){
                          Get.offAll(()=> LoginScreen());
                        }
                       /* async {if(ischeck !=  false){
                             try{
                               await controller.signupmehod(context: context,
                               email: emailController.text.toString(),
                                 password: passwordController.text.toString()
                               ).then((value) {
                                 return controller.storreUserData(
                                   email: emailController.text,
                                   password: passwordController.text,
                                   name: nameController.text
                                 );
                               }).then((value) {
                                 VxToast.show(context, msg:'Log in Successfully');
                                 Get.offAll(()=> Home());
                               });
                             }catch (e){
                                auth.signOut();
                                VxToast.show(context, msg: e.toString());
                             }
                           }}*/
                )
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(text: const TextSpan(
                  children: [
                    TextSpan(text: 'Already have an account?',
                       style: TextStyle(fontFamily: regular,color: fontGrey)),
                    TextSpan(text: login,
                        style:TextStyle(fontFamily: regular,color: redColor)),
                  ]
                )).onTap(() {
                  Get.back();
                }),
                
                10.heightBox,
                signupwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
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
                ))
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
