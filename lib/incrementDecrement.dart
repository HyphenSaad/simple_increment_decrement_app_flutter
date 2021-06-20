import 'package:flutter/material.dart';

class IncrementDecrement extends StatefulWidget {
  @override
  State<IncrementDecrement> createState() => _IncrementDecrement();
}

class _IncrementDecrement extends State<IncrementDecrement> {
  int _value = 0;

  Widget createButton(
    VoidCallback function,
    Color color,
    IconData icon,
    double deviceWidth,
  ) {
    return SizedBox(
      height: deviceWidth * 0.5,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
            width: MediaQuery.of(context).size.width * 0.125,
            height: MediaQuery.of(context).size.width * 0.125,
          ),
          child: ElevatedButton(
            onPressed: function,
            style: ElevatedButton.styleFrom(
              primary: color,
              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(deviceWidth * 0.025),
                ),
              ),
            ),
            child: Icon(
              icon,
              size: deviceWidth * 0.08,
            ),
          ),
        ),
      ),
    );
  }

  Widget counterDisplay(double deviceWidth) {
    return SizedBox(
      height: deviceWidth * 0.465,
      child: Center(
        child: Text(
          this._value.toString(),
          style: TextStyle(
            fontSize: deviceWidth * 0.5,
            fontFamily: 'Saadin',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          createButton(
            () => setState(() => this._value -= 1),
            Colors.red,
            Icons.remove,
            deviceWidth,
          ),
          SizedBox(width: deviceWidth * 0.025),
          counterDisplay(deviceWidth),
          SizedBox(width: deviceWidth * 0.025),
          createButton(
            () => setState(() => this._value += 1),
            Colors.green,
            Icons.add,
            deviceWidth,
          ),
        ],
      ),
    );
  }
}
