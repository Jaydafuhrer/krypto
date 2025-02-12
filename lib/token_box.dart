import 'package:flutter/material.dart';

class TokenBox extends StatelessWidget {
  const TokenBox({super.key, required this.tokenicon, required this.tokentext});
  final Icon tokenicon;
  final Text tokentext;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 70,
      decoration: BoxDecoration(
          color: const Color(0xFF0E2338).withOpacity(0.9),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          tokenicon,
          SizedBox(
            height: 5,
          ),
          tokentext,
        ],
      ),
    );
  }
}
