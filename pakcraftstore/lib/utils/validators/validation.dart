class TValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }
    //re
    final emailRegExp = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Invalid Email Address';
    }
    return null;
  }
  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required';
    }
    if(value.length < 6){
      return 'Password must be at least 6 characters long';
    }
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at least one upper case letter';
    }
    return null;
  }
  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone Number is required';
    }
    if(!RegExp(r'^\d{11}$').hasMatch(value)){
      return 'Invalid Phone number format (03121234566)';
    }
    return null;
  }

}