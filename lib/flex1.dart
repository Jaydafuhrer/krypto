import 'package:flutter/material.dart';

class Flex1 extends StatelessWidget {
  const Flex1(
      {super.key,
      required this.container,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.color});

  final Widget container;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 140,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            container,
            SizedBox(
              height: 30,
            ),
            Text(
              text1,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text2,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  text3,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  text4,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
