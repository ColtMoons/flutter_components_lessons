import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
          min: 50,
          max: 500,
          activeColor: AppTheme.primary,
          value: _sliderValue,
          onChanged: _sliderEnable
              ? (value) {
                  _sliderValue = value;

                  setState(() {});
                }
              : null,
        ),
        Checkbox(
          value: _sliderEnable,
          onChanged: (value) {
            _sliderEnable = value ?? true;
            setState(() {});
          },
        ),
        CheckboxListTile(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnable,
          onChanged: (value) {
            setState(() {
              _sliderEnable = value ?? true;
            });
          },
        ),
        Switch.adaptive(
          value: _sliderEnable,
          onChanged: (value) {
            setState(() {
              _sliderEnable = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            },
          ),
        ),

        const AboutListTile(),


        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://static.wikia.nocookie.net/inmortalkombat/images/f/fc/Mkvsdc_batman.png/revision/latest?cb=20130127160025&path-prefix=es'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
