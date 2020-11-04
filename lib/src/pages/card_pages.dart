import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2()
        ],
      ),
    );
  }

Widget _cardTipo1() {

  return Card(
    elevation: 20,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Soy el titulo de la tarjeta'),
          subtitle:  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo dolor ut tortor placerat convallis.'),

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              onPressed: null, 
              child: Text('cancelar')
            ),
            FlatButton(
              onPressed: null, 
              child: Text('ok')
            )
          ],
        )
      ],
    )
  );

}

Widget _cardTipo2(){
  final card= Container(
    child: Column(
      children: [
        FadeInImage(
          image: NetworkImage('https://media-exp1.licdn.com/dms/image/C561BAQGEbvT3SFyR9Q/company-background_10000/0?e=2159024400&v=beta&t=hI9WfHDdxBHKVfJmjvSggOVF8VBYIwilVWHqR_ChmdM'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration (milliseconds:  200),
          height: 300,
          fit: BoxFit.cover
        ),

        Container(
          padding: EdgeInsets.all(10),
          child: Text('texto bajo la imagen'))
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10,
          spreadRadius: 2,
          offset: Offset(2,10)
        )
      ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: card
    ),
  );
}


}