import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/listview2_screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu home'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: const Text('Lista'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppTheme.iconColor,
                ),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const ListView2Screen());
                  // Navigator.push(context, route);
                  Navigator.pushNamed(context, 'listview2'); //navegacion
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 1),
    );
  }
}
