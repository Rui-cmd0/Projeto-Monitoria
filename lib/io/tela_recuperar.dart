import 'package:flutter/material.dart';
class TelaRecuperarSenha extends StatefulWidget {
  @override
  _TelaRecuperarSenhaState createState() => _TelaRecuperarSenhaState();
}

class _TelaRecuperarSenhaState extends State<TelaRecuperarSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            ),
            color: Colors.black38,
            onPressed: ()=> Navigator.pop(context,false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40
          ),
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("images/reset-password-icon.png"),
              ),
              SizedBox(
                height: 20,
              ),
             Text(
                  "Esqueceu sua senha?",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Por favor, coloque o seu email associado a sua conta que enviaremos um link para o mesmo com as instruções de restaurasção da sua senha",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                      ),
                      textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3,1],
                        colors: [
                            Color(0xFFF58524),
                            Color(0xFFF92B7F)
                        ],
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Text("Recuperar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()=>{},
                      ),
                    ),
                  ),
                  SizedBox(height: 15,)
            ],
          ),
      ),
    );
  }
}