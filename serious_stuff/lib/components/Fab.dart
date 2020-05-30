import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:serious_stuff/constants.dart' as Constants;
import 'package:serious_stuff/screens/SettingsPage.dart' as Settings;

SpeedDial buildOptionsFAB(BuildContext context, bool isMenuLeft) {
  double currentPos = 18;
  if (isMenuLeft) {
    currentPos = MediaQuery.of(context).size.width - 80;
  }

  // The options floating action button.
  return SpeedDial(
    marginRight: currentPos,
    marginBottom: 20,
    animatedIcon: AnimatedIcons.menu_close,
    animatedIconTheme: IconThemeData(size: 22.0),
    visible: true,
    closeManually: false,
    curve: Curves.bounceIn,
    overlayColor: Constants.primaryForegroundColor,
    overlayOpacity: 0.5,
    onOpen: () => print('OPENING DIAL'),
    onClose: () => print('DIAL CLOSED'),
    tooltip: 'Options',
    heroTag: 'options-fab',
    backgroundColor: Constants.primaryBackgroundColor,
    foregroundColor: Constants.primaryForegroundColor,
    elevation: 8.0,
    shape: CircleBorder(),
    children: [
      SpeedDialChild(
        child: Icon(Icons.settings),
        backgroundColor: Constants.primaryColorLight,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings.SettingsPage())
          );
        },
      ),
      SpeedDialChild(
          child: Icon(Icons.search),
          backgroundColor: Constants.primaryColorLight,
          onTap: () => print('SEARCH')
      ),
    ],
  );
}
