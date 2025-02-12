import 'package:flutter/material.dart';

class Flex3 extends StatelessWidget {
  const Flex3(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2});

  final Image image;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 370,
      decoration: BoxDecoration(
          color: Color(0xFF0E2338), borderRadius: BorderRadius.circular(10)),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                child: image,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                text1,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                text2,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
