import 'package:flutter/material.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crachá do Desenvolvedor'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 8),
              ],
             
              // ===============================================================
              // SOLUÇÃO DESAFIO 5 (3 PONTOS)
//DECORAÇÃO E GRADIENTE
              // ===============================================================
              gradient: const LinearGradient(
                colors: [
                  Colors.indigo,     // Cor 1
                  Colors.blueAccent, // Cor 2
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               
                // ===============================================================
                // SOLUÇÃO DESAFIO 1 (3 PONTOS)
//FOTO DE PERFIL
                // ===============================================================
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/ACg8ocImo_7pu6Z374RMJLSSxL-sf4ndvMh5noEDM5aGUikAPSt78CgR=s288-c-no'),
                ),
               
                const SizedBox(height: 15),
               
                const Text(
                  'Ronaldo de Souza Firmiano Oliveira Rodrigues',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
               
                // ===============================================================
                // SOLUÇÃO DESAFIO 2 (3 PONTOS)
//ESTILIZAÇÃO E BIOGRAFIA
                // ===============================================================
                const Text(
                  'Desenvolvedor Mobile Flutter / SENAI',
                  style: TextStyle(
                    color: Colors.white70,
                    fontStyle: FontStyle.italic, // Aplicado FontStyle.italic
                  ),
                ),
               
                const Divider(color: Colors.white38, height: 30),
               
                // ===============================================================
                // SOLUÇÃO DESAFIO 3 (3 PONTOS)
//ALINHAMENTO DE SKILLS (ROW)
                // ===============================================================
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Centralização da Row
                  children: [
                    Chip(label: Text('Dart')),
                    SizedBox(width: 5),
                    Chip(label: Text('Flutter')), // Adicionado Chip 'Flutter'
                    SizedBox(width: 5),
                    Chip(label: Text('Git')),     // Adicionado Chip 'Git'
                  ],
                ),
               
                const SizedBox(height: 15),
               
                // ===============================================================
                // DESAFIO 4 (3 PONTOS)
//COMPILAÇÃO E ESTRUTURA
                // O código deve compilar perfeitamente sem erros de sintaxe no Debian/Shell.
                // ===============================================================
              ],
            ),
          ),
        ),
      ),
    );
  }
}