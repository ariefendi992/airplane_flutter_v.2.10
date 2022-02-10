import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obSecureText;

  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obSecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle,
          ),
          TextFormField(
            obscureText: obSecureText,
            cursorColor: kBlackColor,
            style: blackTextStyle.copyWith(fontSize: 16),
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defRadius),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defRadius),
                borderSide: BorderSide(color: kRedColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
