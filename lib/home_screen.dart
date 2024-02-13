import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  TextEditingController counterTxt = TextEditingController();//variable que controla lo que guarda la caja de texto
  @override
  Widget build(BuildContext context) {
    counterTxt.text= counter.toString();
    return Scaffold(
        appBar: AppBar(title: const Text('Practica 2'),
        elevation: 15,
        backgroundColor: const Color.fromARGB(190, 168, 3, 244),
        ),
        body:  Center(//center solo permite un widget// sele quito el const por qurno tiene valor fijo
          child: Column(//columna permite muchos
          mainAxisAlignment: MainAxisAlignment.start,//Para la columna ose el eje Y
            children:<Widget> [
              separador(30),
              titulo(),
                separador(15.0),
                creditos(),
                separador(50.0),
                contador(),
          ],
        ),
      ),
      floatingActionButton: botones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Row botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        FloatingActionButton(
          foregroundColor: Colors.amber,
          backgroundColor: Colors.blueAccent,
          onPressed: (){
            counter--;
            counterTxt.text=counter.toString();
            //print('Se presiono el boton -1');
            //print(counter);
          },
          child: const Icon(Icons.exposure_minus_1,),
        ),
        FloatingActionButton(
          foregroundColor: Colors.amber,
          backgroundColor: const Color.fromARGB(255, 155, 68, 255),
          onPressed: (){
            counter=0;
            counterTxt.text= counter.toString();
            //print('Se presiono el boton de reinicio');
            //print(counter);
          },
          child: const Icon(Icons.exposure_zero,),
        ),
        FloatingActionButton(
          foregroundColor: Colors.amber,
          backgroundColor: const Color.fromARGB(255, 211, 68, 255),
          onPressed: (){
            counter++;
            counterTxt.text= counter.toString();
            //print('Se presiono el boton +1');
            //rint(counter);
          },
          child: const Icon(Icons.exposure_plus_1,),
        ),
      ],
    );
  }

  SizedBox separador(double alto) {
    return SizedBox(
                height: alto,
              );
  }

  Row creditos() {
    return const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Solo para el row en el eje x
                children: <Widget>[
                  Text('Desarrolladora: ',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
                  ),
                  Text('Gaby Hernandez',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 174, 255),
                  fontSize: 30.5,
                  ),
                  )
                ],
              );
  }

  Text titulo() {
    return const Text('Contador de taps',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.5,
                      fontWeight: FontWeight.bold,
                    ),);
  }

Widget contador(){
  return  SizedBox(
    width: 100,
    child:  TextField(
      controller: counterTxt,
      enabled: false,
      keyboardType: TextInputType.number,
      maxLength: 6,
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 105, 0, 175)

      ),
      //maxLines: 3,
      //cursorColor:  Color.fromARGB(255, 34, 112, 156),
      //cursorRadius:  const Radius.circular(16.0),
      //cursorWidth: 16.0,
      //obscureText: true,//Encripta contaseña,
      decoration: const InputDecoration(
        //icon: CircularProgressIndicator(),
        icon:  Icon(Icons.punch_clock),
        iconColor: Colors.indigo,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide:  BorderSide(color: Color.fromARGB(255, 51, 196, 240)),
        ),
      ),
    ),
  );
}
}