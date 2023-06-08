import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_state.dart';
import 'register_event.dart';



class SignInBloc extends Bloc<SignInEvent,SignInState>{
     SignInBloc():super(SignInInitialState()){
      on<SignInTextChange> ((event,emit){
      if(event.emailval=="" && EmailValidator.validate(event.emailval)==false){
            if(event.passwordval.length<6){
               emit(SignInErrorState("Please enter a Strong Password  and Enter Email"));
        
              }
           else{
               emit(SignInEmailErrorState("Enter a Valid Email "));
             }
        
        
      }
      else if (event.passwordval.length<6){
        emit(SignInPasswordErrorState("Please enter a Strong Password"));
      }
      else{
        emit(SignInValidState());
      }
      }
    );

    on<SignInSubmit>((event,emit){
       emit(SigninLoadingState());
    });
     }
}