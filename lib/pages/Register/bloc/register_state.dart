class SignInEvent{}


class SignInTextChange extends SignInEvent{

  final String emailval;
  final String passwordval;
  SignInTextChange(this.emailval, this.passwordval);
}


class SignInSubmit extends SignInEvent{

  String email;
  String password;
  SignInSubmit(this.email, this.password);
}
