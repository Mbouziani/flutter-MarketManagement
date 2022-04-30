import 'package:flutter/material.dart';
import 'package:marketmanagement/View/Widgets/W_Subtitle.dart';
import 'package:marketmanagement/View/Widgets/W_Textfield.dart';
import 'package:marketmanagement/View/Widgets/W_Title.dart';

popupAddProductToShopList(BuildContext context) {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  TextEditingController qntController = TextEditingController();
  showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(30.0),
            width: double.infinity,
            child: Card(
              elevation: 0.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orangeAccent.shade100,
                    child: const Icon(
                      Icons.qr_code_scanner_outlined,
                      size: 35,
                      color: Colors.deepOrangeAccent,
                    ),
                    radius: 40,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const WSubTitle(data: "Tap to Scan Product BarCode"),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WTitle(data: 'Name'),
                      WTextField(
                        controller: nameController,
                        hintText: ' ',
                        isReadonly: true,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const WTitle(data: 'Price'),
                            WTextField(
                              controller: priceController,
                              hintText: ' ',
                              isReadonly: true,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const WTitle(data: 'Quntity'),
                            WTextField(
                              controller: qntController,
                              hintText: ' ',
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      popButton(
                        titre: 'Add',
                        backClr: Colors.orangeAccent,
                        fontClr: Colors.white,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      popButton(
                        titre: 'cancel',
                        backClr: Colors.grey.shade400,
                        fontClr: Colors.white,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

class popButton extends StatelessWidget {
  const popButton({
    Key? key,
    required this.titre,
    required this.backClr,
    required this.onTap,
    required this.fontClr,
  }) : super(key: key);
  final String titre;
  final VoidCallback onTap;
  final Color backClr, fontClr;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: backClr, borderRadius: BorderRadius.circular(7)),
          alignment: Alignment.center,
          child: Text(
            titre,
            style: TextStyle(
              color: fontClr,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
