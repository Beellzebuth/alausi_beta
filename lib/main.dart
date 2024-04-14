import 'package:flutter/material.dart';
import 'package:pandabar/pandabar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Programa de Prueba #1',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String page = 'Grey';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        buttonData: [
          PandaBarButtonData(
            id: 'Grey',
            icon: Icons.dashboard,
            title: 'Grey'
          ),
          PandaBarButtonData(
            id: 'Blue',
            icon: Icons.book,
            title: 'Blue'
          ),
          PandaBarButtonData(
            id: 'Red',
            icon: Icons.account_balance_wallet,
            title: 'Red'
          ),
          PandaBarButtonData(
            id: 'Yellow',
            icon: Icons.notifications,
            title: 'Yellow'
          ),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {

        },
      ),
      body: Builder(
        builder: (context) {

          switch (page) {
            case 'Grey':
              return Container(color: Colors.grey.shade900);
            case 'Blue':
              return Container(color: Colors.blue.shade900);
            case 'Red':
              return Container(color: Colors.red.shade900);
            case 'Yellow':
              return Container(color: Colors.yellow.shade700);
            default:
              return Container();
              
          }

        },
      ),
    );
  }
}