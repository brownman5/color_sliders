import 'package:flutter/material.dart';

class ColorSliderPage extends StatefulWidget {
  const ColorSliderPage({super.key});

  @override
  State<ColorSliderPage> createState() => _ColorSliderPageState();
}

class _ColorSliderPageState extends State<ColorSliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Sliders"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0,
          ),
          ColorSlider(
            label: "Red", color: Colors.red, value: redValue),


        ]),
    )
  }
}

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Color Sliders"),
      theme: Theme
    ),
  )
}