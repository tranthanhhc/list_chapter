import 'package:flutter/material.dart';

class Gratitude1 extends StatefulWidget {
  final int radioGroupValue;

  Gratitude1({Key? key, required this.radioGroupValue}) : super(key: key);

  @override
  _GratitudeState createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude1> {

  final List<String> _gratitudeList = [];

  String? _selectedGratitude;

  int? _radioGroupValue;

  void _radioOnChanged(int index) {
    setState(() {
      _radioGroupValue = index;
      _selectedGratitude = _gratitudeList[index];
      print('_selectedRadioValue $_selectedGratitude');
    });
  }
  @override
  void initState() {
    super.initState();
    _gratitudeList.addAll(['Family','Friend','coffee']);
    _radioGroupValue = widget.radioGroupValue;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gratitude'),
        actions: <Widget>[
          IconButton(
              onPressed: () => Navigator.pop(context,_selectedGratitude),
              icon:  const Icon(Icons.check),
          ),
        ],
      ),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Radio(
                value: 0,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index!),
              ),
              const Text('Family'),
              Radio(
                value: 1,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index!),
              ),
              const Text('Friends'),
              Radio(
                value: 2,
                groupValue: _radioGroupValue,
                onChanged: (index) => _radioOnChanged(index!),
              ),
              const Text('Coffee'),
            ],
          ),
        ),
      ),
    );
  }
}
