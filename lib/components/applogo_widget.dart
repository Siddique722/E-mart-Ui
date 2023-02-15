import 'package:emart_app/consts/consts.dart';


Widget applogoWidget(){

  return Container(
    height: 77, width: 77,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
          borderRadius: BorderRadius.circular(9),
    ),
    child: Image.asset(icAppLogo),
  );
}