import 'package:airplane_flutter_2_10/cubit/page_cubit.dart';
import 'package:airplane_flutter_2_10/ui/pages/home_page.dart';
import 'package:airplane_flutter_2_10/ui/pages/setting_page.dart';
import 'package:airplane_flutter_2_10/ui/pages/transaction_page.dart';
import 'package:airplane_flutter_2_10/ui/pages/wallet_page.dart';
import 'package:airplane_flutter_2_10/ui/widgets/custom_bottom_navigation.dart';
import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget menuItem(int curretIndex) {
      switch (curretIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            left: defMargin,
            right: defMargin,
            bottom: 30,
          ),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigation(
                index: 0,
                iconUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigation(
                index: 1,
                iconUrl: 'assets/icon_transaction.png',
              ),
              CustomBottomNavigation(
                index: 2,
                iconUrl: 'assets/icon_wallet.png',
              ),
              CustomBottomNavigation(
                index: 3,
                iconUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, curretIndex) {
        return Scaffold(
          backgroundColor: kSecondaryColor,
          body: Stack(
            children: [
              menuItem(curretIndex),
              bottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
