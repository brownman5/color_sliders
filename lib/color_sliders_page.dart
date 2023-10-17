import 'color_slider_component.dart';
import 'package:flutter/material.dart';

class ColorSliderPage extends StatefulWidget {
  const ColorSliderPage({super.key});

  @override
  State<ColorSliderPage> createState() => _ColorSliderPageState();
}

class _ColorSliderPageState extends State<ColorSliderPage> {
  double redValue = 0.5;
  double greeenValue = 0.0;
  double blueValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Sliders"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          ColorSlider(
            label: "Red",
            color: Colors.red,
            value: redValue,
            sliderChanged: (newValue) {
              setState(() {
                redValue = newValue;
              });
            },
          ),
          ColorSlider(
            label: "Green",
            color: Colors.green,
            value: redValue,
            sliderChanged: (newValue) {
              setState(() {
                greeenValue = newValue;
              });
            },
          ),
          ColorSlider(
            label: "Blue",
            color: Colors.blue,
            value: redValue,
            sliderChanged: (newValue) {
              setState(() {
                greeenValue = newValue;
              });
            },
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(20.0),
            color: Color.fromRGBO(
              (redValue * 255).round(),
              (greeenValue * 255).round(),
              (blueValue * 255).round(),
              1.0,
            ),
          ))
        ]
      ),
    );
  }
}