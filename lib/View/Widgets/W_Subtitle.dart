import 'package:flutter/material.dart';

class WSubTitle extends StatelessWidget {
  const WSubTitle({
    required this.data,
    this.fontClr,
    Key? key,
  }) : super(key: key);
  final String data;
  final Color? fontClr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        data,
        style: TextStyle(
          color: fontClr ?? Colors.grey.shade600,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
