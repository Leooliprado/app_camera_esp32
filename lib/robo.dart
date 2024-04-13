import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

final Uri _url = Uri.parse('http://192.168.15.12'); // URL do Google Chrome

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark, // Definindo o tema como escuro
        primaryColor: Colors.amber, // Definindo a cor primária como ouro
      ),
      home: HonePage(),
    );
  }
}

class HonePage extends StatefulWidget {
  @override
  State<HonePage> createState() {
    return HonePageState();
  }
}

class HonePageState extends State<HonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 226, 170, 0), // Cor de fundo do AppBar
        title: const Text(
          'Camera ESP32-CAM',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 27, color: Colors.black
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black), // Define a cor da seta como preta
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _launchUrl(); // Corrigido para chamar a função _launchUrl
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 226, 170, 0), // Cor de ouro
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Abrir a câmera',
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
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
