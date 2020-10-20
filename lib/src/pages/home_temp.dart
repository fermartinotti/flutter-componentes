import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ["uno", "dos", "tres", "cuatro", "cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _crearItems2()
      )
    );
  }


  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (var item in opciones) {
      final tempWidget = ListTile(title: Text(item),);

      lista..add(tempWidget)
           ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItems2(){
    var widgets = opciones.map((item) {
      
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitle de '+ item),
            leading: Icon(Icons.add_a_photo),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();

    return widgets;

  }
}