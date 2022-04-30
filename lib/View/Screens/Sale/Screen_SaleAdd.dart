import 'package:flutter/material.dart';
import 'package:marketmanagement/View/Screens/Sale/Screen_SaleItem.dart';
import 'package:marketmanagement/View/Screens/Sale/W_PopupAddProductToShopList.dart';
import 'package:marketmanagement/View/Widgets/W_Subtitle.dart';
import 'package:marketmanagement/View/Widgets/W_Title.dart';

class ScreenSaleAdd extends StatelessWidget {
  ScreenSaleAdd({Key? key}) : super(key: key);

  List<String> rowFrTile = [];
  List<String> rowscTile = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black54,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const Updateheader(),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.orangeAccent,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: rowFrTile.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: rowFrTile.length,
                            itemBuilder: (context, index) => rowUpdateTitle(
                              titre: rowFrTile[index],
                              subtitre: rowscTile[index],
                            ),
                          )
                        : const WSubTitle(data: "Your list is empty"),
                  ),
                ),
              ],
            )),
            const row2Title(
              totalPrice: '0',
              totalProduct: '0',
              dateSale: '29-04-2022',
            ),
            const BottomNavigator(),
          ],
        ),
      ),
    );
  }
}

class rowUpdateTitle extends StatelessWidget {
  const rowUpdateTitle({
    required this.subtitre,
    required this.titre,
    Key? key,
  }) : super(key: key);
  final String titre, subtitre;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          WTitle(data: titre + '*10'),
          const Expanded(
            child: Text(
              ' :  ........................................  ',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                letterSpacing: 1.5,
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          WTitle(data: ' ' + subtitre)
        ],
      ),
    );
  }
}

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(7)),
          alignment: Alignment.center,
          child: const Text(
            "Save",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class Updateheader extends StatelessWidget {
  const Updateheader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => popupAddProductToShopList(context),
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent.withOpacity(0.5),
              child: const Icon(
                Icons.add_shopping_cart,
                size: 40,
                color: Colors.black45,
              ),
              radius: 60,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const WSubTitle(data: "Add Product to your shop list")
        ],
      ),
    );
  }
}
