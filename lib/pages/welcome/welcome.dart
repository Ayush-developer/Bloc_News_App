import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:project/pages/welcome/bloc/welcome_bloc.dart';
import './bloc/welcome_events.dart';
import './bloc/welcome_states.dart';
import '../../app.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NormalBloc>(
      create: (context)=>NormalBloc(),
      child:MaterialApp(
      home:Pages(),
      ),
      );

  }
}

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20,100,0,20),
              child: BlocBuilder<NormalBloc,NormalState>(
                builder:(context,state){
                  if (state is NormalOneState){
                     return Text("Welcome");
                  }
                  else if (state is NormalTwoState){
                     return Text("What is Up");
                  }
                  else if(state is NormalThreeState){
                    return Text("Hey Everbody");
                  }
                  else{
                    return Container();
                  }
                }
              )
            ),
            Image(image: AssetImage('images/girl.jpeg')),
             Padding(
              padding: const EdgeInsets.fromLTRB(20,30,20,20),
              child: BlocBuilder<NormalBloc,NormalState>(
               builder: (context,state) {
                  if(state is NormalOneState){
                    return  Text(state.s,
                         textAlign: TextAlign.left,
                            style:TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.abel().fontFamily,
                    
                )
                     );
                  }
                  else if(state is NormalTwoState){
                  return  Text(state.ss,
                         textAlign: TextAlign.left,
                            style:TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.abel().fontFamily,
                    
                )
                         );
                  }
                   else if(state is NormalThreeState){
                  return  Text(state.sss,
                         textAlign: TextAlign.left,
                            style:TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.abel().fontFamily,
                    
                )
                         );
                  }
                  
        
                  else{
                    return Container();
                  }
               }
             ),
            ),
            ElevatedButton(
              onPressed: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => StartApp()));
              }
            , child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text("Register Now",
                textAlign: TextAlign.left,
                style:TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                    
                )),
            )),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               
              children: [
                 ElevatedButton(
              onPressed: (){
                    BlocProvider.of<NormalBloc>(context).add(ChangeEvent(1));
              }
            , child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text("1",
                textAlign: TextAlign.left,
                style:TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.abel().fontFamily,
                    
                )),
                
            )),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ElevatedButton(
                onPressed: (){
                  BlocProvider.of<NormalBloc>(context).add(ChangeEvent(2));
                }
                         , child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text("2",
                  textAlign: TextAlign.left,
                  style:TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.abel().fontFamily,
                      
                  )),
                         )),
             ),
             ElevatedButton(
              onPressed: (){
                BlocProvider.of<NormalBloc>(context).add(ChangeEvent(3));
              }
            , child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text("3",
                textAlign: TextAlign.left,
                style:TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.abel().fontFamily,
                    
                )),
            ))
              ],
            )






         ]),
        //  backgroundColor: Color.fromARGB(248, 216, 151, 188),
        );
  }
}




// Text("Welcome.",
//               textAlign: TextAlign.left,
//               style:TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.normal,
//                 fontFamily: GoogleFonts.abel().fontFamily,
        
//               ))