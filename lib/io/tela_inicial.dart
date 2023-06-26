import 'package:app_monitoria/io/tela_login.dart';
import 'package:flutter/material.dart';
class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.black,
        title: Text(
          "APP MONITORIA",
          style: TextStyle(fontSize: 20,color: Colors.lightBlue),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,color: Colors.lightBlue
            ),
            color: Colors.black26,
            onPressed: ()=>Navigator.pop(context,false),
            ),
        actions: <Widget>[
        PopupMenuButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.lightBlue,
            ),
            itemBuilder: (context)=> [
             PopupMenuItem(
                 child: FlatButton(
                   child: Text("Sair",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     ),
                   ),
                   onPressed: (){
                     Navigator.pop(context);
                     Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=>TelaLogin()));
                   },
                   ),
              ),
            ],
            color: Colors.lightBlue,
        ),
        ],
        centerTitle: true,
      ), 
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
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
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 18,left: 24),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: ListView(padding:const EdgeInsets.only(top: 10),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                     criarCard("Conteúdo 1°Bimestre", "images/card_1.jpg"),
                      SizedBox(
                        width: 13.92,
                      ),
                     criarCard("Conteúdo 2°Bimestre", "images/card_2.jpg"),
                      SizedBox(
                        width: 13.92,
                      ),
                     criarCard("Conteúdo 3°Bimestre", "images/card_3.jpg"),
                      SizedBox(
                        width: 13.92,
                      ),
                      criarCard("Conteúdo 4°bimestre", "images/card_4.jpg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              criarFormula("Fórmulas Matemáticas","images/formula2.jpg"),
              criarFormula("Fórmulas Físicas","images/formula3.jpg"),
              criarFormula("Fórmulas Químicas","images/formula1.jpg"),
              
            ],
          ),
      ),
    );
  } 
  Widget criarCard(String cont, String foto){
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 GestureDetector(
                   child: ClipRRect(
                     borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: Image.asset(
                      foto,
                       height: 110,
                        ),
                         ),
                         onTap: ()=>{},
                 ),
                       SizedBox(
                      height: 10,
                      ),
                      Text(
                        cont,
                          style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      );
  }
  
  
  
  
  
  Widget criarFormula(String nameForm, String foto){
    return Padding(
                padding: const EdgeInsets.only(
                  
                  left: 24,
                  right: 24
                  ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                       height: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                          ),
                      ),
                      child: Align(
                        child: Text(
                         nameForm,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight:FontWeight.bold,
                            color: Colors.lightBlue
                            ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                   Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                          ),
                          image: DecorationImage(
                           image: ExactAssetImage(foto,),
                           fit: BoxFit.fill
                          )
                      ),
                   ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ) ;
  }
  
}