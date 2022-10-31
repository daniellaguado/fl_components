import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_library_sharp,
              color: AppTheme.iconColor,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Laboris Lorem aliqua qui deserunt minim Lorem magna velit aliqua voluptate commodo Lorem.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    print('Cancelar');
                  },
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {
                    print('Ok');
                  },
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
