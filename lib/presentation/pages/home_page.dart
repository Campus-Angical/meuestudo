import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Meu Estudo"),
          actions: [Icon(Icons.search)],
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.timelapse), label: "Horarios"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Configuracao"),
        ]),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Cleiton Jonnas"),
                accountEmail: Text(
                  "cleitinhoextreme007@gmail.com",
                ),
                currentAccountPicture: ClipOval(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTggauC9GzZ20cDt94Nzm2-z-qvmi9Jrh1JK-6n1HG-derBaewvGMJTsHMcw8ndDX7Fjqc&usqp=CAU"),
                ),
              ),
              ListTile(
                title: Text("Conta"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("notificacoes"),
                leading: Icon(Icons.push_pin),
              ),
              ListTile(
                title: Text("Atividades"),
                leading: Icon(Icons.list_alt),
              ),
              ListTile(
                title: Text("Atividades Pendentes"),
                leading: Icon(Icons.list),
              ),
              ListTile(
                title: Text("Materias arquivadas"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Sair"),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ),
        body: GridView(
          padding: EdgeInsets.fromLTRB(18, 14, 18, 14),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 14, crossAxisSpacing: 14),
          children: [_buildCard(), _buildCard()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          child: Icon(Icons.add),
        ));
  }

  Widget _buildCard() {
    return Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      color: Color.fromARGB(255, 0, 140, 255),
      child: Column(
        children: [
          Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white
          
          ),
            height: 70,
            width: 110,
          ),
        
          Text(
            "matematica",
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}
