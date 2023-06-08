import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import './register.dart';
import './bloc/register_bloc.dart';
import './bloc/register_state.dart';

import './bloc/register_event.dart';

String emails ="";
String passwords ="";
void main(){
  runApp(MyApps());
}


class MyApps extends StatelessWidget{
         Widget build(BuildContext context){
          return BlocProvider<SignInBloc>(
          create: (context)=>SignInBloc(),
          child: MaterialApp(
            home: HomeScreen()
          )
          );
         }
}


class HomeScreen extends StatelessWidget {
     Widget build(BuildContext context){
       return Scaffold(
        body:
Container(
      margin: EdgeInsets.fromLTRB(20,30,20,30),
      padding: EdgeInsets.fromLTRB(20,30,20,30),
      child:Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:[  
         
          Center(child: Text("Login Form",
          textAlign: TextAlign.center,
          ),
                  
          ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: BlocBuilder<SignInBloc,SignInState>(
               builder: (context,state) {
                  if(state is SignInErrorState){
                    return  Text(state.err,
                         textAlign: TextAlign.left,
                         style: TextStyle(
                  color: Colors.red,
           
                         ));
                  }
                  else if(state is SignInEmailErrorState){
                  return  Text(state.errmsg,
                         textAlign: TextAlign.left,
                         style: TextStyle(
                  color: Colors.red,
           
                         ));
                  }
                   else if(state is SignInPasswordErrorState){
                  return  Text(state.errmsgs,
                         textAlign: TextAlign.left,
                         style: TextStyle(
                  color: Colors.red,
           
                         ));
                  }
                  else{
                    return Container();
                  }
               }
             )
           ),
          TextFormField(
            onChanged: (email)async{
              BlocProvider.of<SignInBloc>(context).add(SignInTextChange(email,passwords));
              emails = email;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(   
    labelText: 'Enter Name',  
    hintText: 'ayush@hyperlab'  
          )
          ),
            TextFormField(
              onChanged: (password)async{
                passwords = password;
                BlocProvider.of<SignInBloc>(context).add(SignInTextChange(emails, password));
                  
                
              },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(   
    labelText: 'Enter Password',  
    hintText: 'xbiwi2z6*3b'  
          )
          )]


        ),
      )
),
       );
      
     }
}





