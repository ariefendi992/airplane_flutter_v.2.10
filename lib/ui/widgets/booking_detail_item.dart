import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class BookingDetailItem extends StatelessWidget {
  final String title, value;
  final Color valueColor;
  const BookingDetailItem({
    Key? key,
    required this.title,
    required this.value,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(
            'assets/icon_check.png',
            width: 16,
            height: 16,
          ),
          const SizedBox(width: 6),
          Text(
            title,
            style: blackTextStyle.copyWith(),
          ),
          const Spacer(),
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
