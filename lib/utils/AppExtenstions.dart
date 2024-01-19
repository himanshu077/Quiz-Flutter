import 'package:flutter/material.dart';


// extension for Build context
extension ContextExten on BuildContext{

  // navigate to next screen
  void  pushNavigator(Widget screen) => Navigator.push(this, MaterialPageRoute(builder: (context) => screen,));

}