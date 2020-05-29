import 'package:flutter/material.dart';
import 'package:serious_stuff/constants.dart' as Constants;

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool onLeftSide = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.settings),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text(Constants.moveOptionsLeft),
                Container(
                  child: Switch(
                    value: onLeftSide,
                    onChanged: (value){
                      setState(() {
                        onLeftSide = value;
                        print(onLeftSide);
                      });
                    },
                    activeTrackColor: Constants.primaryColor,
                    activeColor: Constants.primaryBackgroundColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}