import 'package:flutter/material.dart';
import 'package:marketmanagement/View/Screens/Product/W_PopupProduct.dart';
import 'package:marketmanagement/View/Widgets/W_Subtitle.dart';
import 'package:marketmanagement/View/Widgets/W_Title.dart';

class ScreenProductHome extends StatelessWidget {
  const ScreenProductHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: Colors.white,
          title: const WTitle(
            data: 'Product',
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
    return GestureDetector(
      onTap: () => popupProduct(context),
      child: Container(
        height: 70,
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.orangeAccent.shade100.withOpacity(0.5), width: 2),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.orangeAccent.shade100,
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.deepOrangeAccent,
            ),
            radius: 25,
          ),
          title: const WTitle(data: 'Coca cola'),
          subtitle: const WSubTitle(
            data: '\$25',
            fontClr: Colors.red,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.black38,
          ),
        ),
      ),
    );
  }
}
