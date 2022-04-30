import 'package:flutter/material.dart';
import 'package:marketmanagement/View/Screens/Product/Screen_ProductAdd.dart';
import 'package:marketmanagement/View/Screens/Sale/Screen_SaleAdd.dart';
import 'package:marketmanagement/View/Widgets/W_Subtitle.dart';
import 'package:marketmanagement/View/Widgets/W_Title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: WHomeHeader(),
          ),
          const WAddSale(),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Divider(
                  height: 1.5,
                  color: Colors.black54,
                )),
                SizedBox(
                  width: 10,
                ),
                WTitle(data: 'OR'),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Divider(
                  height: 1.5,
                  color: Colors.black54,
                )),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const WAddProduct(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class WAddProduct extends StatelessWidget {
  const WAddProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenProductAdd(),
            ));
      },
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              height: 5,
            ),
            WSubTitle(
              data: 'Add New Product',
              fontClr: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class WAddSale extends StatelessWidget {
  const WAddSale({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenSaleAdd(),
            ));
      },
      child: Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              height: 5,
            ),
            WSubTitle(
              data: 'Add New Sale',
              fontClr: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class WHomeHeader extends StatelessWidget {
  const WHomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WTitle(data: 'Hello!'),
              WSubTitle(data: 'How can I help You ?'),
            ],
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/user.png'),
            radius: 25,
          ),
        ],
      ),
    );
  }
}
