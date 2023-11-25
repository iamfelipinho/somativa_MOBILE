import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("SVAR"),
        ),
        body: ListView(
          children: [
            Destino(
              nome: 'Angra dos Reis',
              imagemPath: 'imagens/angra.jpg',
              valorDiaria: 384,
              valorPorPessoa: 70,
            ),
            Destino(
              nome: 'Jericoacoara',
              imagemPath: 'imagens/jericoacoara.jpg',
              valorDiaria: 571,
              valorPorPessoa: 75,
            ),
            Destino(
              nome: 'Arraial do Cabo',
              imagemPath: 'imagens/arraialdocabo.jpg',
              valorDiaria: 534,
              valorPorPessoa: 65,
            ),
            Destino(
              nome: 'Florianopolis',
              imagemPath: 'imagens/florianopolis.jpg',
              valorDiaria: 348,
              valorPorPessoa: 85,
            ),
            Destino(
              nome: 'Madrid',
              imagemPath: 'imagens/madrid.jpg',
              valorDiaria: 401,
              valorPorPessoa: 85,
            ),
            Destino(
              nome: 'Paris',
              imagemPath: 'imagens/paris.jpg',
              valorDiaria: 546,
              valorPorPessoa: 95,
            ),
            Destino(
              nome: 'Orlando',
              imagemPath: 'imagens/orlando.jpg',
              valorDiaria: 616,
              valorPorPessoa: 105,
            ),
            Destino(
              nome: 'Las Vegas',
              imagemPath: 'imagens/lasvegas.jpg',
              valorDiaria: 504,
              valorPorPessoa: 110,
            ),
            Destino(
              nome: 'Roma',
              imagemPath: 'imagens/roma.jpg',
              valorDiaria: 478,
              valorPorPessoa: 85,
            ),
            Destino(
              nome: 'Chile',
              imagemPath: 'imagens/chile.jpg',
              valorDiaria: 446,
              valorPorPessoa: 95,
            ),
            // Adicione outros destinos aqui
          ],
        ),
      ),
    );
  }
}

class Destino extends StatefulWidget {
  final String nome;
  final String imagemPath;
  final int valorDiaria;
  final int valorPorPessoa;

  const Destino({
    required this.nome,
    required this.imagemPath,
    required this.valorDiaria,
    required this.valorPorPessoa,
    Key? key,
  }) : super(key: key);

  @override
  _DestinoState createState() => _DestinoState();
}

class _DestinoState extends State<Destino> {
  int nDiarias = 0;
  int nPessoas = 0;
  int total = 0;

  void dias() {
    setState(() {
      nDiarias++;
    });
  }

  void incrementarNPessoas() {
    setState(() {
      nPessoas++;
    });
  }

  void calctotal() {
    setState(() {
      total =
          (nDiarias * widget.valorDiaria) + (nPessoas * widget.valorPorPessoa);
    });
  }

  void limpar() {
    setState(() {
      nDiarias = 0;
      nPessoas = 0;
      total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 250,
      child: Column(
        children: [
          Image.asset(
            widget.imagemPath,
            width: 393,
            height: 150,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: dias,
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: incrementarNPessoas,
              ),
              IconButton(
                icon: Icon(Icons.calculate),
                onPressed: calctotal,
              ),
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: limpar,
              ),
            ],
          ),
          Text('Diárias: $nDiarias'),
          Text('Acompanhantes: $nPessoas'),
          Text('Total: $total'),
        ],
      ),
    );
  }
}
