import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:serious_stuff/constants.dart' as Constants;

SpeedDial buildOptionsFAB() {
  // The options floating action button.
  return SpeedDial(
    marginRight: 18,
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
          child: Icon(Icons.search),
          backgroundColor: Constants.primaryColorLight,
          label: 'Search a room',
          labelStyle: TextStyle(fontSize: 16.0),
          onTap: () => print('SEARCH')),
      SpeedDialChild(
        child: Icon(Icons.settings),
        backgroundColor: Constants.primaryColorLight,
        label: 'Settings',
        labelStyle: TextStyle(fontSize: 16.0),
        onTap: () => print('SETTINGS'),
      ),
    ],
  );
}
