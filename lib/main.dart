import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 49, 62),
        body: Column(
          children: [
           
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                   color:Color.fromARGB(232, 28, 28, 39),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                           Text('10x4',style: TextStyle(fontSize:50,color: Colors.white )),
                       Text('40',style: TextStyle(fontSize:40,color: Colors.white ))

                        ],
                      )
                     
                    ],
                  ),
                ),
                  ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: const BoxDecoration(
                   color: Colors.black,
                   

                ),
               
              
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    ReusableWidget(
                      value: 'AC',
                      color: Colors.white,
                      color1: const Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '+/-',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '%',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '/',
                      color: Colors.black,
                      color1: Colors.white,
                    ),
                    ReusableWidget(
                      value: '7',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '8',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '9',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: 'x',
                      color: Colors.black,
                      color1: Colors.white,
                    ),
                    ReusableWidget(
                      value: '4',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '5',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '6',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '-',
                      color: Colors.black,
                      color1: Colors.white,
                    ),
                    ReusableWidget(
                      value: '1',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '2',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '3',
                      color: Colors.white,
                      color1: Color.fromARGB(232, 28, 28, 39),
                    ),
                    ReusableWidget(
                      value: '+',
                      color: Colors.black,
                      color1: Colors.white,
                    ),
                    ReusableWidget(
                      value: '<>',
                      color: Colors.black,
                      color1: Colors.white,
                    ),
                    ReusableWidget(
                      value: '0',
                      color: Colors.black,
                      color1: Colors.white,
                    ),
                    ReusableWidget(
                      value: '.',
                      color: Colors.black,
                      color1: Colors.white,
                    ),
                    ReusableWidget(
                      value: '=',
                      color: Colors.black,
                      color1: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  String value;
  Color color;
  Color color1;

  ReusableWidget(
      {super.key, required this.value, required this.color, required this.color1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color1),
      child: Center(
          child: Text(
        value.toString(),
        style: TextStyle(fontSize: 25, color: color),
      )),
    );
  }
}
