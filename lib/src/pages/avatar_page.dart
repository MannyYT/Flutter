import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('MG'),
              backgroundColor: Colors.red[900],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage : NetworkImage('http://i2.cdn.turner.com/money/dam/assets/130423094442-tesla-model-s-620xa.jpg'),
              radius: 25
            ),
          )
        ],
      ),
      body: Center( 
        child: FadeInImage( 
        image: NetworkImage('https://queautocompro.com/wp-content/uploads/2013/07/2009_Fit_Sport_101-1024x682.jpg'),
        
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 500),
        fit: BoxFit.fill,

        ),
      )
    );
  }
}