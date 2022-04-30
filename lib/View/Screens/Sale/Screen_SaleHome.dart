import 'package:flutter/material.dart';
import 'package:marketmanagement/View/Screens/Sale/Screen_SaleItem.dart';
import 'package:marketmanagement/View/Widgets/W_Subtitle.dart';
import 'package:marketmanagement/View/Widgets/W_Title.dart';

class ScreenSaleHome extends StatelessWidget {
  const ScreenSaleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: Colors.white,
          title: const WTitle(
            data: 'Sales',
          ),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: WSaleList(),
        ));
  }
}

class WSaleList extends StatelessWidget {
  const WSaleList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) => const WSaleListitem(),
      ),
    );
  }
}

class WSaleListitem extends StatelessWidget {
  const WSaleListitem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Colors.blueAccent.shade100.withOpacity(0.5), width: 2),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenSaleItem(),
            )),
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent.shade100.withOpacity(0.5),
          child: const Icon(Icons.shopping_cart_outlined),
          radius: 25,
        ),
        title: const WTitle(data: '15 Items'),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            WSubTitle(
              data: '\$250',
              fontClr: Colors.red,
            ),
            WSubTitle(data: '2022-15-10'),
          ],
        ),
      ),
    );
  }
}
