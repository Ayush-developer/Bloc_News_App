class SignInState {}


class SignInInitialState extends SignInState {


}


class SignInInvalidState extends SignInState {}

class SignInValidState extends SignInState{}

class SignInEmailErrorState extends SignInState{
  final String errmsg;
  SignInEmailErrorState(this.errmsg);
  }


class SignInPasswordErrorState extends SignInState{
  final String errmsgs;
  SignInPasswordErrorState(this.errmsgs);
  }

  class SignInErrorState extends SignInState{
  final String err;
  SignInErrorState(this.err);
  }

class SigninLoadingState extends SignInState{}
