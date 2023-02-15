import 'package:emart_app/consts/consts.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    var controller =Get.put(HomeController());

    var navbarItem=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: 'Home'),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: 'Catagories'),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: 'Cart'),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: 'Account'),
    ];

    var navBody=[
      HomeScreen(),
      CatagoryScreen(),
      CartScreen(),
      ProfileScreen(),



    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=>  Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
          ()=> BottomNavigationBar(currentIndex:  controller.currentNavIndex.value,
            selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navbarItem,
            onTap: (value){
            controller.currentNavIndex.value=value;
            },
          ),
      ),
    );
  }
}
