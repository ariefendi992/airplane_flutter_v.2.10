import 'package:airplane_flutter_2_10/ui/pages/check_out_page.dart';
import 'package:airplane_flutter_2_10/ui/widgets/custom_button.dart';
import 'package:airplane_flutter_2_10/ui/widgets/indicator_item.dart';
import 'package:airplane_flutter_2_10/ui/widgets/seat_item.dart';
import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerText() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget indicatorItem() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            IndicatorItem(
              iconUrl: 'assets/icon_available.png',
              title: 'Available',
            ),
            IndicatorItem(
              iconUrl: 'assets/icon_selected.png',
              title: 'Selected',
            ),
            IndicatorItem(
              iconUrl: 'assets/icon_unavailable.png',
              title: 'Unavailable',
            ),
          ],
        ),
      );
    }

    Widget seatItemIndex() {
      Widget seatIndicator() {
        return Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'A',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'B',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'C',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'D',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
          ],
        );
      }

      Widget seatSelect() {
        return Column(
          children: [
            // NOTE: SEAT 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 2),
                const SeatItem(status: 2),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(defRadius),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 0),
                const SeatItem(status: 2)
              ],
            ),

            // NOTE: SEAT 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 0),
                const SeatItem(status: 0),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(defRadius),
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 0),
                const SeatItem(status: 2)
              ],
            ),

            // NOTE: SEAT 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 1),
                const SeatItem(status: 1),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(defRadius),
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 0),
                const SeatItem(status: 0)
              ],
            ),

            // NOTE: SEAT 4
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 0),
                const SeatItem(status: 2),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(defRadius),
                  ),
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 0),
                const SeatItem(status: 0)
              ],
            ),

            // NOTE: SEAT 4
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 0),
                const SeatItem(status: 0),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(defRadius),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 2),
                const SeatItem(status: 0)
              ],
            ),
          ],
        );
      }

      // NOTE: YOUR SEAT
      Widget yourSeat() {
        return Container(
          margin: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your seat',
                style: greyTextStyle.copyWith(fontWeight: light),
              ),
              Text(
                'A3, B3',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );
      }

      // NOTE: TOTAL
      Widget total() {
        return Container(
          margin: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: greyTextStyle.copyWith(fontWeight: light),
              ),
              Text(
                'IDR 540.000.000',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defRadius),
        ),
        child: Column(
          children: [
            seatIndicator(),
            seatSelect(),
            yourSeat(),
            total(),
          ],
        ),
      );
    }

    Widget checkOutButton() {
      return CustomButton(
        margin: const EdgeInsets.only(top: 30, bottom: 46),
        title: 'Continue to Checkout',
        width: double.infinity,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CheckOutPage(),
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
          indicatorItem(),
          seatItemIndex(),
          checkOutButton(),
        ],
      ),
    );
  }
}
