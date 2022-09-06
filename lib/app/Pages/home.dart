import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _listItem = [
    'assets/images/consultas.png',
    'assets/images/exames-laboratoriais.jpg',
    'assets/images/odontologico.png',
    'assets/images/pet.png',
    'assets/images/seguro.png',
    'assets/images/luto.png',
    'assets/images/falaconosco.png',
    'assets/images/telemedicina.png',
    'assets/images/rede atendimento.png',
    'assets/images/juridico.png',
    'assets/images/CONSULTAS-TABELA.png',
    'assets/images/LABORATORIO.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 79, 86, 214),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
        ),
        title: Text("Saúde Prime Família"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),

      // scrool
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(.4),
                      Colors.black.withOpacity(.2),
                    ]),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "",
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 20, 52),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: (_listItem.map(
                  (item) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                )).toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
