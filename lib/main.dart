import 'package:counter/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/counter_state.dart';


void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
     return  BlocProvider<CounterCubit>(
      create: (context)=> CounterCubit(),
      child: MaterialApp(
      home: HomePage(),
      )
     );

    
  }
}

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title:Text("Hyper Labs Counter App"),
            backgroundColor: Colors.green[300],
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Welcome to HyperLabs Counter",
                style:TextStyle(
                  fontSize: 20,
                  color:Colors.green[300],
                  
                  
                )
                ),
                Container(
                  child: BlocBuilder<CounterCubit,CounterState>(
                    builder: (context,state) {
                      return Text(state.CounterValue.toString(),
                      style:TextStyle(
                        fontSize: 50,
                        color: Colors.green[300],
                      ));
                    }
                  ),
                  padding: EdgeInsets.fromLTRB(0, 50,0, 50),
                 
                ),

                Container(
    
            
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          BlocProvider.of<CounterCubit>(context).increment();
                        },
                        child: Text('Increment'),
                         style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[300],
                                       
                         )),
                      ),
                      ElevatedButton(onPressed: (){
                        BlocProvider.of<CounterCubit>(context).decrement();
                      },
                      child: Text('Decrement'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[300],
                       )
                      )
                    ],
                    ),
                  
                )

              ]
            ),
            
          ),
          padding: EdgeInsets.fromLTRB(30,30,30,30),
        ),
      );
  }
}


