import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hot Reload Demo'),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    margin: EdgeInsets.only(bottom: 50.0),
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(4.2),
                  ),
                  child:
                  Image.asset('download.png',
            width: 100,),),
                  Text('you have push the button this many times'),
                  Text('counter: ${this._counter}',style: TextStyle(
                      fontSize: 32.0
                  ),),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange
                            ),
                            child: Text("increment"),
                            onPressed:() {
                              setState(() {
                                this._counter++;
                              });
                              print('pressed');
                            }
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple
                          ),
                            child: Text("decrement"),
                            onPressed:() {
                              setState(() {
                                this._counter--;
                              });
                              print('pressed');
                            }
                        ),
                      ]
                  )
                ],
              )
          ),

          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                this._counter =0;
              });
            },
            child: Icon(Icons.refresh),
          ),


        )
    );

  }
}
