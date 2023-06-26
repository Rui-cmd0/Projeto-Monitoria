import 'package:app_monitoria/io/lista_alunos.dart';
import 'package:app_monitoria/io/tela_inicial.dart';
import 'package:app_monitoria/io/tela_presen%C3%A7a.dart';
import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart'as bmnav;

class TelaBmnav extends StatefulWidget {
  @override
  _TelaBmnavState createState() => _TelaBmnavState();
}

class _TelaBmnavState extends State<TelaBmnav> {
  int indexPaginaAtual = 0;
  Widget tabAtual = TelaInicial();
  List<Widget> tabs=[
     TelaInicial(),
     TelaListaDeAlunos(),
       TelaPresenca(),
  ];
  List<bmnav.BottomNavItem> itensDaBarra = [
bmnav.BottomNavItem(
  Icons.home,
  label: "Início"
),
bmnav.BottomNavItem(
  Icons.account_box,
  label: "Lista"
),
bmnav.BottomNavItem(
  Icons.beenhere,
  label: "Presença"
  
)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabAtual,
      bottomNavigationBar: bmnav.BottomNav(color: Colors.black,
        index: indexPaginaAtual,
        items: itensDaBarra,
        onTap: (i){
          setState(() {
            indexPaginaAtual = i;
            tabAtual = tabs[i];
          });
        }, 
      ),
    );
  }
}