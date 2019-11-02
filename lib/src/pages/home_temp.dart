import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final List<String> options = ['Uno', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp')
      ),
      body: ListView(
        children: _createItemsShorter(),
      ),
    );
  }

  /*List<Widget> _createItems(){
    List<Widget> list = new List<Widget>();
    for (String option in options) {
      final Widget tempWidget = ListTile(
        title: Text(option),
      );
      list..add(tempWidget)
          ..add(Divider());
    }
    return list;
  }*/

  List<Widget> _createItemsShorter() => options.map((String option){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$option'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.add_a_photo),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

}