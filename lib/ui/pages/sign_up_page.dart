import 'package:airplane_flutter_2_10/ui/widgets/custom_button.dart';
import 'package:airplane_flutter_2_10/ui/widgets/custom_text_form_field.dart';
import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerText() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget body() {
      Widget inputName() {
        return const CustomTextFormField(
          title: 'Name',
          hintText: 'Your full name',
        );
      }

      Widget inputEmail() {
        return const CustomTextFormField(
          title: 'E-mail',
          hintText: 'Your email address',
        );
      }

      Widget inputPassword() {
        return const CustomTextFormField(
          title: 'Password',
          hintText: 'Your password',
          obSecureText: true,
        );
      }

      Widget inputHobby() {
        return const CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your hobby',
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          width: double.infinity,
          onPressed: () => Navigator.pushNamed(context, '/bonus'),
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defRadius),
        ),
        child: Column(
          children: [
            inputName(),
            inputEmail(),
            inputPassword(),
            inputHobby(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Center(
        child: Container(
          margin: const EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defMargin),
        children: [
          headerText(),
          body(),
          tacButton(),
        ],
      ),
    );
  }
}
