import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class ItemPhoto extends StatelessWidget {
  final String photoUrl;

  const ItemPhoto({
    Key? key,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defRadius),
        image: DecorationImage(
          image: AssetImage(photoUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
