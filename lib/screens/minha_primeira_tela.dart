
import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
const MyFirstWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.red, width: 100, height: 100,),
                Container(color: const Color.fromARGB(255, 24, 232, 76), width: 50, height: 50,),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.blue, width: 100, height: 100,),
                Container(color: const Color.fromARGB(255, 24, 232, 76), width: 50, height: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.cyan, width: 50, height: 50,),
                Container(color: Colors.pinkAccent, width: 50, height: 50,),
                Container(color: Colors.purple, width: 50, height: 50,),
              ],
            ),
            Container(color: Colors.amber, height: 30, width: 300,
            child: const Text(
              'Diamante amarelo', 
              style: TextStyle(color: Colors.black, fontSize: 28),
              textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                // print('Você apertou o botão');
                }, 
                child: const Text('Aperte o botão'))
          ],
        ),
      );
  }
}

  //     home: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Container(color: Colors.red, width: 100, height: 100,),
  //         Container(color: Colors.blue, width: 50, height: 50,),
  //       ],
  //     ),

  //     home: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.end,
  //       children: [
  //         Container(color: Colors.red, width: 100, height: 100,),
  //         Container(color: Colors.blue, width: 50, height: 50,),
  //       ]),

  //     home: Stack(
  //       alignment: AlignmentDirectional.center,
  //       children: [
  //         Container(color: Colors.red,),
  //         Container(color: Colors.blue, width: 100, height: 100,),
  //       ]
  //     ),;
  // }



