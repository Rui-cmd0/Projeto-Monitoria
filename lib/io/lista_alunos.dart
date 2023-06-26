import 'package:flutter/material.dart';
class TelaListaDeAlunos extends StatefulWidget {
  @override
  _TelaListaDeAlunosState createState() => _TelaListaDeAlunosState();
}

class _TelaListaDeAlunosState extends State<TelaListaDeAlunos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("LISTA DE ALUNOS",
        style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,color: Colors.lightBlue,
            ),
            color: Colors.black26,
            onPressed: ()=>Navigator.pop(context,false),
            ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Color.fromRGBO(0, 0, 253, 12),
              ],
            ),
          ),
          child: ListView(
            children: <Widget>[
              criarItemLista("imagens/alan.jpg","Alan Jonatas",),
                criarItemLista("imagens/alexsandra.jpg","Alexsandra "),
                criarItemLista("imagens/vanessa.jpg", "A. Vanessa"),
                criarItemLista("imagens/dudu.jpg", "Eduardo T."),
                criarItemLista("imagens/wandasson.jpg", "Wandasson"),
                criarItemLista("imagens/bruna.jpg", "Bruna Sousa"),
                 criarItemLista("imagens/carlos.jpg", "Carlos"),
                  criarItemLista("imagens/cleberson.jpg", "Cleberson"),
                  criarItemLista("imagens/damaso.jpg", "Damaso"),
                  criarItemLista("imagens/dayane.jpg", "Dayane"),
                  criarItemLista("imagens/diego.jpg", "Diego"),
                  criarItemLista("imagens/eder.jpg", "Eder"),
                  criarItemLista("imagens/eduardo_rui.jpg", "Eduardo"),
                  criarItemLista("imagens/erik.jpg", "Erik"),
                  criarItemLista("imagens/elaine.jpg", "Elaine"),
                  criarItemLista("imagens/fEduardo.jpg", "F. Eduardo"),
                  criarItemLista("imagens/manel.png", "Emanuel"),
                  criarItemLista("imagens/felier.jpg", "Felier"),
                  criarItemLista("imagens/berg.jpg", "Lindemberg"),
                  criarItemLista("imagens/gabriel_s.jpg", "Gabriel Snts."),
                  criarItemLista("imagens/peixe.jpg", "Gabriel V."),
                   criarItemLista("imagens/guilherme.jpg", "Guilherme"),
                   criarItemLista("imagens/gyan.jpg", "Gyan W."),
                   criarItemLista("imagens/harley.jpg", "Harley"),
                   criarItemLista("imagens/ivina.jpg", "Ívina"),
                   criarItemLista("imagens/joao.jpg", "João Bat."),
                   criarItemLista("imagens/jp.jpg", "João Pedro"),
                   criarItemLista("imagens/josue.jpg", "Josué w."),
                   criarItemLista("imagens/karine.jpg", "Karine"),
                   criarItemLista("imagens/lailson.jpg", "Lailson"),
                   criarItemLista("imagens/cj.jpg", "Lucas Sousa"),
                   criarItemLista("imagens/lucasF.jpg", "Lucas Freitas"),
                   criarItemLista("imagens/maedson.jpg", "Maedson"),
                   criarItemLista("imagens/marcos.jpg", "Marcos"),
                   criarItemLista("imagens/maria.jpg", "Maria Clara"),
                   criarItemLista("imagens/eduarda.jpg", "Maria Edu"),
                   criarItemLista("imagens/gleice.jpg", "Gleice"),
                   criarItemLista("imagens/matheus.jpg", "Mateus"),
                   criarItemLista("imagens/ranielly.jpg", "Ranielly"),
                   criarItemLista("imagens/samuel.jpg", "Samuel"),
                   criarItemLista("imagens/saullo.jpg", "Saullo"),
                   criarItemLista("imagens/wilson.jpg", "William"),
                   criarItemLista("imagens/ivan.jpg", "ivan"),
                   criarItemLista("imagens/leyane.jpg", "Leyane"),
                   criarItemLista("imagens/leyane.jpg", "Leyane"),
            ],
          ),
          ),
      ),
    );
  }

 Widget criarItemLista( String foto,String nome,) {
    return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(75),
                          bottomRight: Radius.circular(75),
                          ),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        SizedBox(
                          width: 15,
                          ),
                        Expanded(
                          flex:2,
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.all(Radius.circular(90)),
                            ),
                           child: Stack(
                             children: <Widget>[
                                Align(
                                  child:  Container(
                                      height: 90,
                                     width: 90,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: ExactAssetImage(foto)
                                      )
                                    ),
                                   ),
                                 )
                             ],
                           ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                          ),
                            Expanded(
                              flex: 5,
                              child: Text(
                              nome,
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 38,
                                ),
                          ),
                            ),
                         
                        ],
                      ),
                    ),
                  ),
                ],
              );
  }
}