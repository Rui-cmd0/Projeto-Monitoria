import 'package:flutter/material.dart';
import"package:shared_preferences/shared_preferences.dart";

class TelaPresenca extends StatefulWidget {
  @override
  _TelaPresencaState createState() => _TelaPresencaState();
}

class _TelaPresencaState extends State<TelaPresenca> {
   List<String> listaPresencaEmString=[
    "","","","","","","","","","","","","","","",
    "","","","","","","","","","","","","","","",
    "","","","","","","","","","","","","",""
    
     ];
   List<String> listaFaltaEmString=[
     "","","","","","","","","","","","","","","","","","","","",
    "","","","","","","","","","","","","","","","","","","","",
    "","","",""
   ];

  List<bool> valor = [
    false,false,false,false,false,false,false,
    false,false,false,false,false,false,false,
    false,false,false,false,false,false,false,
    false,false,false,false,false,false,false,
     false,false,false,false,false,false,false,
    false,false,false,false,false,false,false,
    false,false,false,
    ];
  

   List<bool> falta = [
    false,false,false,false,false,false,false,
    false,false,false,false,false,false,false,
    false,false,false,false,false,false,false,
    false,false,false,false,false,false,false,
     false,false,false,false,false,false,false,
    false,false,false,false,false,false,false,
    false,false,false,
    ];
    int pow = 0;


    @override
  void initState() {
    carregarListaPresenca();
        super.initState();
  }
      @override
      Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("PRESENÇA NAS MONITORIAS",
        style: TextStyle(fontSize: 20,color: Colors.lightBlue,
        ),
      ),
       leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.lightBlue,
              ),
              onPressed: (){
                Navigator.pop(
                  context,false
                );
              },
          ),
      centerTitle: true, 
      ),
      body: Container(
         height: MediaQuery.of(context).size.height*1,
         width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black,
                    Color.fromRGBO(0, 0, 253, 12),
                  ],
                ),
              ),//CriaR métdodo
              child: ListView(
                children: <Widget>[
                 criarLista("Alan Jonatas",0,0),
                 criarLista("Alexsandra ",1,1),
                 criarLista("A. Vanessa",2,2),
                 criarLista("A. Eduardo",3,3),
                 criarLista("A. Wandasson",4,4),
                 criarLista("Bruna Sousa",5,5),
                 criarLista("Carlos",6,6), 
                 criarLista("Cleberson",7,7),
                 criarLista("Damasso",8,8),
                 criarLista("Dayane",9,9),
                 criarLista("Diego",10,10),
                 criarLista("Éder",11,11), 
                 criarLista("Eduardo Rui",12,12),
                 criarLista("Erick Moura",13,13),
                 criarLista("Elaine",14,14),
                 criarLista("F. Eduardo",15,15),
                 criarLista("F. Emanuel",16,16),  
                 criarLista("Felier",17,17),
                 criarLista("Lindemberg",18,18),
                 criarLista("Gabriel Santos",19,19),
                 criarLista("Gabriel Vitor",20,20),
                 criarLista("Guilherme",21,21), 
                 criarLista("Gyan Wesley",22,22),
                 criarLista("Harley",23,23),
                 criarLista("Ívina",24,24),
                 criarLista("João Batista",25,25),
                 criarLista("João Pedro",26,26),  
                 criarLista("Josué Wesley", 27,27),
                 criarLista("Karine",28,28),
                 criarLista("Lailson",29,29),
                 criarLista("Lucas Sousa",30,30),
                 criarLista("Lucas Freitas",31,31), 
                 criarLista("Maedson",32,32),
                 criarLista("Marcos", 33,33),
                 criarLista("Maria Clara", 34,34),
                 criarLista("Maria Eduarda",35,35),
                 criarLista("Maria Gleiciele",36,36), 
                 criarLista("Mateus Ramos",37,37),
                 criarLista("Ranielly",38,38), 
                 criarLista("Samuel França",39,39),
                 criarLista("Saullo Dias",40,40),
                 criarLista("William Cruz", 41,41),
                 criarLista("Leyane Maria",42,42),
                 criarLista("Ivan Carlos",43,43),
                ],
              ),
      ),//1shared preferences
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           salvarListas(context);
        },
         
        backgroundColor: Colors.black,
        child: Icon(
          Icons.check,
          color: Colors.lightBlue,
          ),),
        );
      }
      Widget criarLista(String nome,int pos, int fal){
      
        return SingleChildScrollView(
              child: Row(
             children: <Widget>[
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.black,
                       borderRadius: BorderRadius.all(Radius.circular(50)),
                     ),
                     child: SizedBox.expand(
                       child: FlatButton(
                         child: Text(nome,
                         style: TextStyle(
                           fontSize: 25,
                           color: Colors.lightBlue,
                           ),
                         ),
                         onPressed: ()=>{},
                       ),
                     ),
                   ),
                 )
                 ),
                 Text(
                   "P",
                   style: TextStyle(
                     color: Colors.lightBlue,
                     fontSize: 14,
                     fontWeight: FontWeight.bold,
                     ),
                   ),
              Switch(
                activeColor: Colors.lightBlue,
                value: valor[pos],
                onChanged: (newValue){
                  mudarValorSwitch(newValue,pos);
                },
              ),
                Text(
                   "F",
                   style: TextStyle(
                     color: Colors.lightBlue,
                     fontSize: 14,
                     fontWeight: FontWeight.bold,
                     ),
                   ),
              Switch(
                activeColor: Colors.lightBlue,
                value: falta[fal],
                onChanged:(newValue){
                  marcarFalta(newValue, fal);
                } ,
              ),
            
             ],
          ),
        );
      }
    
      void mudarValorSwitch(bool newValue,int pos) {
        
        setState(() {
          valor[pos] = newValue;
          if(newValue==true){
            listaPresencaEmString[pos]="true";
          }else{
            listaPresencaEmString[pos]="false";
          }
          
        });
         
      }
      void marcarFalta(bool newValue,int fal){
        setState(() {
          falta[fal] = newValue;
          if(newValue==true){
            listaFaltaEmString[fal]="true";
          }else{
            listaFaltaEmString[fal]="false";
          }
        });
      }
    
      Future carregarListaPresenca() async {
        SharedPreferences prs = await SharedPreferences.getInstance();
        if(prs.getStringList("lista_presença")!=null && prs.getStringList("lista_falta")!=null){
           
           setState(() {
             listaPresencaEmString = prs.getStringList("lista_presença");
           listaFaltaEmString = prs.getStringList("lista_falta");
           for(int i=0; i<listaPresencaEmString.length;i++){
             if(listaPresencaEmString[i]=="true"){
                  valor[i]=true;
             }else{
                 valor[i]=false;
             }
           }
             for(int i=0; i<listaFaltaEmString.length;i++){
             if(listaFaltaEmString[i]=="true"){
                  falta[i]=true;
             }else{
                 falta[i]=false;
             }
           }
           });
           
        
      }
 

}

 void salvarListas(BuildContext context) async {
    SharedPreferences prs = await SharedPreferences.getInstance();  
      prs.setStringList("lista_presença", listaPresencaEmString);
      prs.setStringList("lista_falta", listaFaltaEmString);
     exibirMensagemDeSucess(context, "Alterações salvas com sucesso");
  }
  void exibirMensagemDeSucess(BuildContext context, String mensagemErro) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return  AlertDialog(
            backgroundColor: Colors.black,
                  title:Center(
                    child: Text(
                      "CONFIRMAÇÃO",
                      style: TextStyle(color: Colors.lightBlue),
                      ),
                      ),
                  content: Text(
                    mensagemErro,
                      style: TextStyle(color: Colors.lightBlue),
                    ),
              );
           
         

        }

    );

  }
  
}