import 'package:flutter/material.dart';
import '../Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Screen'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              textImg: 'imagen 1',
              urlImg:
                  'https://photographylife.com/wp-content/uploads/2017/11/Super-high-ISO-night-landscape-photo.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              textImg: 'imagen 2',
              urlImg:
                  'https://wp.nathabblog.com/wp-content/uploads/2017/05/Milford-Sound-Sunset-New-Zealand.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              textImg: 'imagen 3 ',
              urlImg:
                  'https://wp.nathabblog.com/wp-content/uploads/2017/05/Waterfall-Fjordland-New-Zealand.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              textImg: null,
              urlImg:
                  'https://wp.nathabblog.com/wp-content/uploads/2017/05/Milford-Sound-New-Zealand-Log.jpg',
            ),
          ],
        ));
  }
}
