import 'package:flutter/material.dart';
import 'robo.dart'; // Importe a classe HonePage corretamente

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark, // Definindo o tema como escuro
        primaryColor: Color.fromARGB(255, 226, 170, 0), // Definindo a cor primária como ouro
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 226, 170, 0), // Cor de fundo do AppBar
        title: const Text(
          'Câmera De Segurança',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 27,
            color: Colors.black, // Cor do texto do botão
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/sem_titulo.png', // Caminho para a imagem
            fit: BoxFit.contain, // Ajuste da imagem
          ),

          SizedBox(height: 100), // Espaçamento entre a imagem e o botão

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HonePage()),
              );
            },
            child: Container(
              width: 300,
              height: 50,
              margin: EdgeInsets.only(bottom: 20), // Margem inferior
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 226, 170, 0), // Cor de ouro
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Conectar com a câmera',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black, // Cor do texto do botão
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
