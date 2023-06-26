import 'package:app_monitoria/io/tela_login.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  @override
  
  _HomeState createState() => _HomeState(); 
}

class _HomeState extends State<Home> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                stops: [0,1],
                colors: [
                   Color.fromRGBO(0, 0, 0, 1),
                    Color.fromRGBO(0, 0, 253, 12),
                ]
              )
            ),
        child: Container(
               child: Column(mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   GestureDetector(
                                    child: Image.asset(
          "images/logo_ciencias_exatas.png",
          ),
          onTap: (){
            abrirTelaLogin();
          },
                   ),
                   SizedBox(height: 8,),
                   Container(
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.black,
                       shape: BoxShape.circle
                     ),
                     child: Icon(
                       Icons.arrow_upward,
                       color: Colors.lightBlue,
                       size: 40,
                       ),
                   ),
                     Padding(
                       padding: const EdgeInsets.only(left: 40,right: 40,top: 8),
                       child: Container(
                         height: 50,
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.only(topLeft:Radius.circular(50),bottomRight: Radius.circular(50))
                         ),
                         child: SizedBox.expand(
                           child: FlatButton(
                             child: Text(
                               "Aperte a Foto",
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 25,
                                 color: Colors.lightBlue,
                                 ),
                                 ), onPressed: ()=>{},
                           ),
                         ),
                       ),
                     ),
                 ],
               ),
            
        ),
      ),
    ),
    );
   
  }
  void abrirTelaLogin(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>TelaLogin()));
  }
}