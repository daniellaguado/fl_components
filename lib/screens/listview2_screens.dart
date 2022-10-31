import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/routes/app_routes.dart';

final menuOptions = AppRoutes.menuOptions;

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListScreen'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            //es como va a ser construido el widget
            title: Text(menuOptions[index].name),
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.iconColor,
            ), // icono antes del text
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: AppTheme.iconColor,
            ), //icono despues del texto
            onTap: () {
              Navigator.pushNamed(
                  context, menuOptions[index].route); //navegacion

              final menuOptionsTap = menuOptions[index];
              print(menuOptionsTap.name);
            }, //da el efecto de que se cicló
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
