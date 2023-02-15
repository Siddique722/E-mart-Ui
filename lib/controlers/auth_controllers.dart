import 'package:emart_app/consts/consts.dart';


class AuthController extends GetxController{
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();

//login


Future <UserCredential?> loginmethod({context})
async{
  UserCredential? usercredential;
  try {
   usercredential= await auth.signInWithEmailAndPassword(password: passwordController.text,email: emailController.text );
  } on FirebaseAuthException catch (e){
    VxToast.show(context, msg: e.toString());
  }
  return usercredential;
}

//signup

  Future <UserCredential?> signupmehod({email, password, context})
  async{
    UserCredential? usercredential;
    try {

     usercredential= await auth.createUserWithEmailAndPassword(email: email,password: password);
    } on FirebaseAuthException catch (e){
      VxToast.show(context, msg: e.toString());
    }
    return usercredential;
  }
  
  
  // storing datra methoid

storreUserData({name, password, email}) async{
  DocumentReference store = await firestore.collection(userscollection).doc(currentuser!.uid);
  store.set(
    {
      'name': name,
      'password': password,
      'email': email,
      'imagUrl': ''
    }
  );
}

// signout mehod

signoutMethod(context) async{
  try {
    await auth.signOut();
  } catch (e){
    VxToast.show(context, msg: e.toString());
  }
}
}