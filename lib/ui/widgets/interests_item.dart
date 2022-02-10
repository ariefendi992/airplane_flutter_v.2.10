import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class InterestsItem extends StatelessWidget {
  final String title;

  const InterestsItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_check.png'),
                ),
              ),
            ),
            Text(title, style: blackTextStyle),
          ],
        ),
      ),
    );
  }
}
