

class ValidationMixin {

  String validateEmail(String value){
    if(!value.contains('@')){
      return 'Please enter a valid email';
    }
    return null;

  }

  String validatePassword(String val){
    if(val.length < 4){
      return 'Pass must be greater than 4';
    }
    return null;

  }
}