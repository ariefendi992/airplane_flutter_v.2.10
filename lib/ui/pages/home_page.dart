import 'package:airplane_flutter_2_10/ui/widgets/custom_destination.dart';
import 'package:airplane_flutter_2_10/ui/widgets/custom_tile_destination.dart';
import 'package:airplane_flutter_2_10/utils/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defMargin,
          right: defMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_profil.png'),
                ),
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      );
    }

    Widget favoriteDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                city: 'Tanggerang',
                name: 'Lake Ciliwung',
                imageUrl: 'assets/image_destination_1.png',
                rating: 4.8,
              ),
              DestinationCard(
                city: 'Spain',
                name: 'White Houses',
                imageUrl: 'assets/image_destination_2.png',
                rating: 4.7,
              ),
              DestinationCard(
                city: 'Monaco',
                name: 'Hill Heyo',
                imageUrl: 'assets/image_destination_3.png',
                rating: 4.8,
              ),
              DestinationCard(
                city: 'Japan',
                name: 'Menarra',
                imageUrl: 'assets/image_destination_4.png',
                rating: 5.0,
              ),
              DestinationCard(
                city: 'Singapore',
                name: 'Payung Teduh',
                imageUrl: 'assets/image_destination_5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget tileDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 130,
          left: defMargin,
          right: defMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination_6.png',
              name: 'Danau Beratan',
              city: 'Singaraja',
              rating: 4.8,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination_7.png',
              name: 'Sydney Opera',
              city: 'Australia',
              rating: 4.7,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination_8.png',
              name: 'Roma',
              city: 'Italy',
              rating: 4.8,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination_5.png',
              name: 'Payung Teduh',
              city: 'Singapore',
              rating: 4.8,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination_3.png',
              name: 'Hill Hey',
              city: 'Monaco',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        favoriteDestination(),
        tileDestination(),
      ],
    );
  }
}
