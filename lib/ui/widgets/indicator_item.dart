import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class IndicatorItem extends StatelessWidget {
  final String iconUrl, title;

  const IndicatorItem({
    Key? key,
    required this.iconUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: AssetImage(iconUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 6),
          Text(title, style: blackTextStyle)
        ],
      ),
    );
  }
}
