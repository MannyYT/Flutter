import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  
  'add_alert' : Icons.add_alert_rounded,
  'accessibility' :Icons.accessibility_new_outlined,
  'folder_open' : Icons.folder_open

};

Icon getIcon(String nombreIcono){

  return Icon(_icons[nombreIcono],color:Colors.blue);
  

}