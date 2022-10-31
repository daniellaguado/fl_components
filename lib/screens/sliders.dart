import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _swich = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider && Checks'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Slider.adaptive(
                max: 400,
                min: 50,
                divisions: 100,
                autofocus: true,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _swich
                    ? (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      }
                    : null),
            Text('$_sliderValue'),
            Checkbox(
                value: _swich,
                onChanged: (value) {
                  _swich = value!;
                  setState(() {});
                }),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('CheckBoxLisTitle'),
                value: _swich,
                onChanged: (value) {
                  _swich = value!;
                  setState(() {});
                }),
            Switch(
                value: _swich,
                onChanged: (value) {
                  _swich = value;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                title: _swich ? const Text('On') : const Text('Off'),
                activeColor: AppTheme.primary,
                value: _swich,
                onChanged: (value) {
                  _swich = value;
                  setState(() {});
                }),
            Image(
              image: const NetworkImage(
                  'https://i.pinimg.com/564x/89/72/70/8972706713abe08b51d936c46aaacc7f.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ));
  }
}
