import 'package:flutter/material.dart';
import 'package:serious_stuff/constants.dart' as Constants;
import 'package:serious_stuff/SharedPreferencesHelper.dart' as Preferences;

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.settings),
      ),
      body: Center(
        child: Container(
          padding: new EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Constants.moveOptionsLeft, style: Constants.lightText),
                  Container(
                    child: FutureBuilder(
                      future: Preferences.SharedPreferencesHelper.getMenuLeft(),
                      initialData: false,
                      builder: (context, snapshot) {
                        return Switch(
                          value: snapshot.data,
                          onChanged: (value){
                            print("changing menu on left to: $value");
                            setState(() {
                              Preferences.SharedPreferencesHelper.setMenuLeft(value);
                            });
                          },
                          activeTrackColor: Constants.primaryColor,
                          activeColor: Constants.primaryBackgroundColor,
                        );
                      }
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}