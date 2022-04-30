import 'package:flutter/material.dart';
import 'package:marketmanagement/View/Widgets/W_Title.dart';

class ScreenSaleItem extends StatelessWidget {
  ScreenSaleItem({Key? key}) : super(key: key);

  List<String> rowFrTile = [
    'book*4',
    'Milk*3',
    'Tea*1',
    'coffe*1',
    'Bread*2',
    'chees*4',
    'coca*3',
    'book*4',
    'Milk*3',
    'Tea*1',
    'coffe*1',
    'Bread*2',
    'chees*4',
    'coca*3',
  ];
  List<String> rowscTile = [
    '215',
    '30',
    '15',
    '25',
    '20',
    '60',
    '30',
    '15',
    '25',
    '20',
    '60',
    '30',
    '15',
    '25',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
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
                  const Singlheader(),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orangeAccent,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: rowFrTile.length,
                        itemBuilder: (context, index) => rowTitle(
                          titre: rowFrTile[index],
                          subtitre: rowscTile[index],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const row2Title(
                    totalPrice: '250',
                    totalProduct: '25',
                    dateSale: '2022-05-10',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BottomWidget(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class Singlheader extends StatelessWidget {
  const Singlheader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent.withOpacity(0.5),
        child: const Icon(
          Icons.shopping_cart_outlined,
          size: 40,
          color: Colors.black45,
        ),
        radius: 60,
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.redAccent, borderRadius: BorderRadius.circular(7)),
        alignment: Alignment.center,
        child: const Text(
          "Delete",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class rowTitle extends StatelessWidget {
  const rowTitle({
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
          WTitle(data: titre),
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

class row2Title extends StatelessWidget {
  const row2Title({
    required this.totalPrice,
    required this.totalProduct,
    required this.dateSale,
    Key? key,
  }) : super(key: key);
  final String totalPrice, totalProduct, dateSale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowTitle(titre: 'Date', subtitre: dateSale),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              const Text(
                'Total Product : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Expanded(
                child: Text(
                  '........................................',
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
              Text(
                ' ' + totalProduct,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              const Text(
                'Total Price : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Expanded(
                child: Text(
                  '........................................',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                ' \$' + totalPrice,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
