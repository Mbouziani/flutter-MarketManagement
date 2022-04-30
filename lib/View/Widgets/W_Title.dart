import 'package:flutter/material.dart';

class WTitle extends StatelessWidget {
  const WTitle({
    required this.data,
    Key? key,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 3.0, left: 2),
      child: Text(
        data,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
