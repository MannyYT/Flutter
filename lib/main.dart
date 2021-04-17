
import 'package:flutter_application_2p/src/pages/alert_page.dart';
import 'package:flutter_application_2p/src/pages/avatar_page.dart';
import 'package:flutter_application_2p/src/pages/home_page.dart';
import 'package:flutter_application_2p/src/routes/routes.dart';
//import 'package:componentes/src/pages/homepage_alternativo.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'listTile APP',
      debugShowCheckedModeBanner: false,
      //home:HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Ruta : ${settings.name}');
        // Si en caso la ruta no existe puedo redireccionar a una que sea estatica
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}