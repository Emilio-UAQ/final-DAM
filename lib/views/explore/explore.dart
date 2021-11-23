import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => new _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150.0,
            height: 190.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://www.eleconomista.com.mx/__export/1618813105696/sites/eleconomista/img/2021/04/19/libros2.jpg_2118499843.jpg"),
              ),
            ),
          ),
          Text("Profile", textScaleFactor: 1.5),
          _nombreInput(),
          _firmaInput(),
        ],
      )),
    ));
  }
}

TextEditingController sale = new TextEditingController();
TextEditingController sale2 = new TextEditingController();

Widget _nombreInput() {
  return TextField(
      autofocus: false,
      controller: sale,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintText: 'Username',
        labelText: 'Name',
        prefixIcon: Icon(Icons.account_circle_outlined),
        contentPadding: EdgeInsets.all(20.0),
      ));
}

Widget _firmaInput() {
  return TextField(
      autofocus: false,
      controller: sale2,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintText: 'Firm',
        labelText: 'Name',
        prefixIcon: Icon(Icons.border_color),
        contentPadding: EdgeInsets.all(20.0),
      ));
}
