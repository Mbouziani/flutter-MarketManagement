import 'package:flutter/material.dart';
import 'package:marketmanagement/View/Widgets/W_Subtitle.dart';
import 'package:marketmanagement/View/Widgets/W_Textfield.dart';
import 'package:marketmanagement/View/Widgets/W_Title.dart';

class ScreenProductUpdate extends StatelessWidget {
  ScreenProductUpdate({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
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
            const SizedBox(
              height: 35,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orangeAccent.shade100,
                    child: const Icon(
                      Icons.qr_code_scanner_outlined,
                      size: 40,
                      color: Colors.black45,
                    ),
                    radius: 60,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const WSubTitle(data: "Tap to Scan Product BarCode"),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const WTitle(data: 'Name'),
            WTextField(
              controller: nameController,
              hintText: 'Enter Product Name',
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 10,
            ),
            const WTitle(data: 'Price'),
            WTextField(
              controller: priceController,
              hintText: 'Enter Product Price',
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 10,
            ),
            const WTitle(data: 'Bare Code'),
            WTextField(
              controller: priceController,
              hintText: 'Scan your Product BarCode',
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(7)),
                alignment: Alignment.center,
                child: const Text(
                  "Update",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
