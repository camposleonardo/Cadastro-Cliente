import 'package:flutter/material.dart';
import 'form2.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Inicio()
      ));
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          title: Text("Home",
          ),

          backgroundColor: Colors.black,
        ),
        body: Center(
          child:Column(
            //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Center(
          child: Stack(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 12),),
              Text(
                'Cadastre-se Gratuitamente!',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.black,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 12),),
              Text(
                'Cadastre-se Gratuitamente!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
    ),
          SizedBox(height: 10),
          Image.asset("imagens/carrinho.png"),

          SizedBox(height: 50),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormularioDois()),
            );
            }, child: const Text("Próxima Pagina"))
        ],
        ),
        ),
      ),
    );
  }
}
