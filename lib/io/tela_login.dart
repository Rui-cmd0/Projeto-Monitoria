import 'package:app_monitoria/io/tela_bmnav.dart';
import 'package:app_monitoria/io/tela_cadastro.dart';
import 'package:app_monitoria/io/tela_recuperar.dart';
import 'package:flutter/material.dart';
class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(//container principal
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,
             Colors.black,
          ]
        )
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:60),
            child: SizedBox(
              height: 128,
              width: 128,
              child: Image.asset("images/logo_ciencias_exatas.png"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email,color: Colors.lightBlue,),
                labelText: "Email",
                hintText: "Digite seu email...",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                  ),
                helperText: "*Campo obrigatório",
                helperStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  ),
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,color: Colors.white
                ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left:40,right: 40),
            child: TextFormField(
              controller: senhaController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                //possibilidade de remoção da borda // Somente teste
                
                icon: Icon(Icons.vpn_key,color: Colors.blue,),
                labelText: "Senha",
                 hintText: "Digite sua senha",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                  ),
                helperText: "*Campo obrigatório",
                helperStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  ),
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  ),
              ),
              style: TextStyle(
                fontSize: 20,color: Colors.white
                ),
            ),
          ),
         Container(
           height: 40,
           alignment: Alignment.centerRight,
           child: FlatButton(
             child: Text(
               "Esqueceu sua senha?",
               style: TextStyle(
                 color: Colors.blue),
               textAlign: TextAlign.right,
               ),
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>TelaRecuperarSenha()));
             },
           ),
         ),
         SizedBox(
           height: 40,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 40,right: 40),
           child: Container(
             height: 60,
             alignment: Alignment.centerLeft,
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 stops: [0.3,1],
                 colors: [
                   Colors.lightBlue,
                   Color.fromRGBO(0, 0, 253, 12)
                 ]
               ),
               borderRadius: BorderRadius.all(
                 Radius.circular(5),
                 ),
             ),
             child:SizedBox.expand(
               child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Text(
                       "Login",
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                       fontSize: 20,
                       ),
                       textAlign: TextAlign.left,
                     ),
                   
                     Container(
                       child: SizedBox(
                         height: 28,
                         width: 28,
                         child: Image.asset("images/bone.png"),
                         ),
                     ),
                  ],
                ),
                onPressed: (){
                 fazerLogin(context);
                },
               ),
             ),
           ),
         ),
         SizedBox(
           height: 3,
         ),//possibilidade de remoção
           Text(
                     "ou",
                     style: TextStyle(
                       color: Colors.lightBlue,
                       fontSize: 12,
                       ),
                       textAlign: TextAlign.center,
                     ),//possibilidade de remoção
                     SizedBox(
                       height: 3,
                       ),
         Padding(
           padding: const EdgeInsets.only(right: 40,left: 40),
           child: Container(
             height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color:Color.fromRGBO(0, 0, 253, 12),
              borderRadius: BorderRadius.all(Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Login com Facebook",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          height: 28,
                          width: 28,
                          child: Image.asset(
                            "images/fb-icon.png",
                            ),
                            ),
                      ),
                  ],
                ),
                onPressed: ()=>{},
              ),
            ),
           ),
         ),
         SizedBox(
           height: 100,
         ),// mais alterações
         Container(
           height: 40,
           child: SizedBox.expand(
                        child: FlatButton(
               child: Text(
                 "Cadastre-se",
                 style: TextStyle(color: Colors.lightBlue),
               textAlign: TextAlign.center,
               ),
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>TelaCadastro()));
               },
             ),
           ),
         ),
        ],
      ),
    ),
    );
  }
  void fazerLogin(BuildContext context){
    String email;
    String senha;
    email = emailController.text;
    senha = senhaController.text;
    if (email == "" || senha == "") {
      exibirMensagemDeErro(context, "Existem campos não preenchidos");

    } else {

      if (email == "admin" && senha == "qwe123") {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => TelaBmnav()));

      } else {
        exibirMensagemDeErro(context, "Usuário e/ou senha incorretos");
      }
    }
  }
  void exibirMensagemDeErro(BuildContext context, String mensagemErro) {
    showDialog(context: context,builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
              title: Center(
                child: Text(
                  "ERRO DE LOGIN",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    ),
                  )),
              content: Text(
                mensagemErro,
                style: TextStyle(
                  color: Colors.lightBlue,
                ),
                ) ,
          );
        }
    );
  }
}