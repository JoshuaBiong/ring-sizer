import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _value = 50;
  bool changing = false;

  void changeColor() {
    if (_value > 100) {
      changing != changing;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: _value,
              width: _value,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
              ),
              child: Center(child: Text('${_value.round().toString()} mm')),
            ),
          ),
          Expanded(
            child: Slider(
                max: 150,
                min: 45,
                value: _value,
                onChanged: (double value) {
                  setState(() {
                    _value = value;
                  });
                }),
          )
        ],
      ),
    );
  }
}
