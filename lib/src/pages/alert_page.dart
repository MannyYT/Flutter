import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Dale Click'),
          onPressed: () {
              Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => _showAlert()),
              );},
          
        ),
      ),
    );
  }
          
  Widget _showAlert() {
        return AlertDialog(
          title: Text('Holas como estas'),
          content: Text('muy bn y tu'),
          actions: [
            FlatButton(onPressed: (){}, child: Text('NO')),
            FlatButton(onPressed: (){}, child: Text('SI')),
          ],
          elevation: 20.0,
          backgroundColor: Colors.amberAccent,
          shape: CircleBorder(),
        );
      
    
  }
}