import 'package:emart_app/consts/consts.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: "Empty Cart".text.color(darkFontGrey).make(),
      ),
    );
  }
}
