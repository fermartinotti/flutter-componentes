import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valorSlider,
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 50,
      min: 10,
      max: 400,
      onChanged: (_bloquearCheck) ? null :    
        ( valor ){
          setState(() {
            _valorSlider = valor;
          });
        },
    );
  }

  Widget _crearCheckbox() {
    
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
        _bloquearCheck = valor;
        });
      });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://assets.stickpng.com/thumbs/58428ba1a6515b1e0ad75ab0.png'),
      width: _valorSlider,
      fit: BoxFit.contain
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
        _bloquearCheck = valor;
        });
      });
  }

}