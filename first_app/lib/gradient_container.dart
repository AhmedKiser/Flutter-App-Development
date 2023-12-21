import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
class GradinetContainer extends StatelessWidget{

  const GradinetContainer(this.colors, {super.key});

  // const GradinetContainer.purple({super.key})
  // : color1 = Colors.deepPurple, 
  //   color2 = Colors.indigo ;
  
  // final Color right, left;
  final List<Color> colors;

  void rollDice() {

  }
  @override
  Widget build(context) {
    
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset('assets/images/dice-2.png',width: 200,),
            // ElevatedButton(onPressed: onPressed, child: child)
            // OutlinedButton(onPressed: onPressed, child: child)
            TextButton(onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 30),
              foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 28) ),
             child: const Text("Roll Dice"))
            ],) ,
          ),
          
        );
  }
}

//video number 30