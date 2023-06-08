import 'package:flutter/material.dart';
import 'package:project/pages/welcome/welcome.dart';
import './app_bloc.dart';
import './app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './pages/welcome/bloc/welcome_bloc.dart';



class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
          create: (context)=>CounterCubit(),
          child: MaterialApp(
            home: CounterScreen()
          )
          );
}
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
    
            
                    child: Column(
                      children: [
                        Row(
                          
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
                          ),

                        ],
                        ),

                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           ElevatedButton(onPressed: (){
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  WelcomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[600],
                       ),
                      child: const Text('Log Out')
                      )
                        ],
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