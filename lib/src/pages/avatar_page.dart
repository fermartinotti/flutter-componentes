import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar( 
              child: Text('SM'),
              backgroundColor: Colors.brown,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 20, 
              backgroundImage: NetworkImage('https://imagenes.20minutos.es/files/image_656_370/uploads/imagenes/2005/11/25/250713.jpg'),
            ),
          )
        ],
      ),
      body: Center( 
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://imagenes.20minutos.es/files/image_656_370/uploads/imagenes/2005/11/25/250713.jpg')
        ),
      ),
    );
  }
}