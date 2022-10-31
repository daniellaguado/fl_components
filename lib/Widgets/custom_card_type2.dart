import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String urlImg;
  final String? textImg;
  const CustomCardType2({Key? key, required this.urlImg, this.textImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage.assetNetwork(
              placeholder: 'assets/jar-loading.gif',
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
              image: urlImg),
          if (textImg != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(textImg ?? 'No title'))
        ],
      ),
    );
  }
}
