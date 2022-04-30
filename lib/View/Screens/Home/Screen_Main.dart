import 'package:flutter/material.dart';
import 'package:marketmanagement/View/Screens/Home/Screen_Home.dart';
import 'package:marketmanagement/View/Screens/Product/Screen_ProductHome.dart';
import 'package:marketmanagement/View/Screens/Sale/Screen_SaleHome.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  int curentindex = 0;

  final screen = [
    const ScreenHome(),
    const ScreenSaleHome(),
    const ScreenProductHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: curentindex,
          children: screen,
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: const IconThemeData(color: Colors.blueAccent),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            backgroundColor: Colors.white,
            currentIndex: curentindex,
            onTap: (index) {
              setState(() {
                curentindex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home_rounded,
                    size: 27,
                  )),
              BottomNavigationBarItem(
                  label: 'Sales',
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                  )),
              BottomNavigationBarItem(
                  label: 'Product',
                  icon: Icon(
                    Icons.shopping_bag_rounded,
                  )),
            ]),
      ),
    );
  }
}
