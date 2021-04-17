import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
    ),
    body: ListView(
      children: <Widget>[_cardt1(), SizedBox(height:20), _cardt2(),SizedBox(height:20), _cardt3() ],
    ),
    );
  }

  Widget _cardt1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assistant_photo, color:Colors.cyanAccent),
            title: Text('Pruebas'),
            subtitle: Text('Chukys'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Confirmo'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Cancelacion'),
                onPressed: (){},
              )
            ],
          )
        ],),
    );
  }
}
Widget _cardt2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
              image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/e/e0/Air_india_b747-400_vt-esn_arp.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 500),
              height: 200.0,
              fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Avion'),
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(
              2.0, 10.0
            )
          )
        ],
        color: Colors.white
      ),
    );
  }

  Widget _cardt3() {
    final card = Container(
      child: Column(
        children: <Widget>[
InkWell(
        onTap: () {
            print ('Le diste click');
        },
        child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: ClipOval(
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/e/e0/Air_india_b747-400_vt-esn_arp.jpg',
                    height: 200,
                    width: 200,
                ),
            ),
        ),
    ),
    Container(
            padding: EdgeInsets.all(5.0), 
            child:Text('Avion de papel es de juguete'),
          ),
          Container(
            padding: EdgeInsets.all(5.0), 
            child:Text('Ola q hace'),
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0) ,
        child: card,
        
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(
              2.0, 10.0
            )
          )
        ],
        color: Colors.white
      ),
    );
  }