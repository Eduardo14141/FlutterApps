import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icons_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        centerTitle: true,
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        print('builder');
        return ListView(
          children: _getItems(snapshot.data, context),
        );
      },
    );
  }
  List<Widget> _getItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = new List<Widget>();
    data.forEach((option){
      final widgetTemp = ListTile(
        title: Text(option['texto']),
        leading: getIcon(option['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          Navigator.pushNamed(context, option['ruta']);
          /*
            final route = MaterialPageRoute(
              builder: (context) => AlertPage()
            );
            Navigator.push(context, route);
          */
        },
      );
      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}