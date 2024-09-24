class AppValidator {
  static String? validationEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validationPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    if (value.length < 6) {
      return "Password must be at least 6 character long.";
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    //check for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at lease one number.';
    }

    //check for special character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?:{}|<>]'))) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNUmber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }

    // Regular expression for phone number validation (assuming a 10-digit US phone number)
    final phoneNumberRegExp = RegExp(r'^\d{10}$');
    if (!phoneNumberRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digit required)';
    }
    return null;
  }
}
