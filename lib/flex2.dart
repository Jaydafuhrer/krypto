import 'package:flutter/material.dart';

class Flex2 extends StatelessWidget {
  const Flex2(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.color});
  final Image image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 370,
      decoration: BoxDecoration(
          color: Color(0xFF0E2338), borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CircleAvatar(
              radius: 20,
              child: image,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        text2,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        text3,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        text4,
                        style: TextStyle(color: color),
                      ),
                      Spacer(),
                      Text(
                        text5,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
