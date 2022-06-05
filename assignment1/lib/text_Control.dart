import 'package:flutter/material.dart';
import './text_Output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
String _mainText = 'This is assignment';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
              Text(_mainText),
              RaisedButton(
                  child: Text("Change the Text"),
                  onPressed: () {
                    setState(() {
                      _mainText = 'I changed it';
                      TextOutput(_mainText);
                    });
                  }),
            ]);
  }
}