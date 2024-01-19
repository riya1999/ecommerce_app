class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {

    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    //check for minimum password length
    if (value.length < 6) {
      return 'Password must contain at least 6 character long';
    }

    //check uppercase
    if (value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    //check for number
    if (value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }

    //check for special character
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validPhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'phone number is required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');
    if(phoneRegExp.hasMatch(value)){
      return 'Invalid Phone number format (10 digit required)';
    }
    return null;

  }
}
