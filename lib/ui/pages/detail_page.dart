import 'package:airplane_flutter_2_10/ui/pages/choose_seat_page.dart';
import 'package:airplane_flutter_2_10/ui/widgets/custom_button.dart';
import 'package:airplane_flutter_2_10/ui/widgets/interests_item.dart';
import 'package:airplane_flutter_2_10/ui/widgets/item_photo.dart';
import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageHeader() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_destination_6.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget boxDecoration() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0.0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defMargin),
        child: Column(
          children: [
            // NOTE : ICON EMBLEM
            Container(
              width: 108,
              height: 24,
              margin: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),

            // NOTE : TITLE
            Container(
              margin: const EdgeInsets.only(top: 256),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Danau Beratan',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Singaraja',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    size: 24,
                    color: kYellowColor,
                  ),
                  const SizedBox(width: 1),
                  Text(
                    '4.8',
                    style: whiteTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            ),

            // NOTE: CONTENT
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE : ABOUT TITLE
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),

                  // NOTE : ABOUT TEXT
                  const SizedBox(height: 6),
                  Text(
                    'Berada di jalur jalan provinsi yang\nmenghubungkan Denpasar\nSingaraja serta letaknya yang dekat\ndengan Kebun Raya Eka Karya\nmenjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(height: 2.0),
                  ),

                  // NOTE: PHOTOS
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // NOTE : TITLE PHOTOS
                        Text(
                          'Photos',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),

                        // NOTE : ITEM PHOTOS
                        Container(
                          margin: const EdgeInsets.only(top: 6),
                          child: Row(
                            children: const [
                              ItemPhoto(
                                photoUrl: 'assets/photo_1.png',
                              ),
                              ItemPhoto(
                                photoUrl: 'assets/photo_2.png',
                              ),
                              ItemPhoto(
                                photoUrl: 'assets/photo_3.png',
                              ),
                            ],
                          ),
                        ),

                        // NOTE : INTERESTS
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // NOTE: INTERESTS TITLE
                              Text(
                                'Interests',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),

                              // NOTE : INTERESTS ITEM
                              Column(
                                children: [
                                  Row(
                                    children: const [
                                      InterestsItem(title: 'Kids Park'),
                                      InterestsItem(title: 'Honor Bridge'),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      InterestsItem(title: 'City Museum'),
                                      InterestsItem(title: 'Central Mall'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            // NOTE: PRICE & BOOKBUTTON
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  // NOTE: PRICE
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),

                  // NOTE: BOOK BUTTON
                  CustomButton(
                    title: 'Book Now',
                    width: 170,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChooseSeatPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            imageHeader(),
            boxDecoration(),
            content(),
          ],
        ),
      ),
    );
  }
}
