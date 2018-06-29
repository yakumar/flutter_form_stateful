import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String _user;
  String _pass;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      child: Form(
        key: formKey,

          child: Column(

            children: <Widget>[
              emailField(),
              passwordField(),
              Container(margin: EdgeInsets.only(top: 18.0),),
              submitBtn(),
            ],
          )
      ),
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'email',
        hintText: 'yourmail@email.com',


      ),
      validator: validateEmail,
      onSaved: (String val){
        _user = val;
      },

    );

  }
  Widget passwordField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'password',


      ),
      obscureText: true,
      validator: validatePassword,
      onSaved: (String val){
        _pass = val;

      },

    );

  }

  Widget submitBtn(){
    return RaisedButton(
      color: Colors.blue,
        onPressed: (){
        if(formKey.currentState.validate()){
          formKey.currentState.save();

          print('$_user :: $_pass');
        }
        },
      child: Text('Submit'),

    );

  }

}
