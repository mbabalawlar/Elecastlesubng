String validateUsername(String value) {
  if (value.length == 0) {
    return "username required";
  }
  if (value.length < 3) {
    return "Username too short";
  }

  return null;
}

String validatePassword(String value) {
  if (value.length == 0) {
    return "Password required";
  } else if (value.length < 8) {
    return "Password too short";
  }

  return null;
}

String quantityvalid(String value) {
  if (value.length == 0) {
    return "quantity required";
  } else if (int.parse(value) <= 0) {
    return "Invalid";
  } else if (int.parse(value) > 5) {
    return "maximum quantity  is 5";
  }

  return null;
}

String validateAmount(String value) {
  if (value.length == 0) {
    return "amount required";
  } else if (int.parse(value) < 100) {
    return "The amount must greater than ₦100";
  }

  return null;
}

String validate_Amount(String value) {
  if (value.length == 0) {
    return "amount required";
  } else if (int.parse(value) < 100) {
    return "The amount must greater than or equal ₦100";
  }

  return null;
}

String validate_bank_data(String value) {
  if (value.length == 0) {
    return "this field  required";
  }

  return null;
}

String validatemusa(String value) {
  if (value.length == 0) {
    return "amount required";
  }

  return null;
}

String withdrawamount(String value) {
  if (value.length == 0) {
    return "amount required";
  } else if (int.parse(value) < 1000) {
    return "minimum withdraw is ₦1000";
  } else if (int.parse(value) > 5000) {
    return "maximum withdraw is  ₦5000";
  }
}

String accountnum(String value) {
  if (value.length == 0) {
    return "account number required required";
  } else if (value.length != 10) {
    return "invalid account number";
  }
}

String name(String value) {
  if (value.length == 0) {
    return "Account name  required";
  }

  return null;
}

String validateBillAmount(String value) {
  if (value.length == 0) {
    return "amount required";
  } else if (int.parse(value) < 500) {
    return "minimum of N500";
  }

  return null;
}


String validate_bank_amount(String value) {
  if (value.length == 0) {
    return "amount required";
  } else if (int.parse(value) < 1000) {
    return "minimum of N1000";
  }

  return null;
}



String validateCode(String value) {
  if (value.length == 0) {
    return "Code required";
  }

  return null;
}

String validateMeter(String value) {
  if (value.length == 0) {
    return "This field is required";
  }

  return null;
}

String validateuser(String value) {
  if (value.length == 0) {
    return "Receiver username required";
  }

  return null;
}

String validateMobile(String value) {
  String patttern = r'(^[0-9]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return "Phone required";
  } else if (value.startsWith("0") && value.length != 11) {
    return "Invalid Mobile Number";
  } else if (value.startsWith("234") && value.length != 13) {
    return "Invalid Mobile Number";
  } else if (!regExp.hasMatch(value)) {
    return "Mobile Number must be digits";
  }
  return null;
}

String validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return "Email is Required";
  } else if (!regExp.hasMatch(value)) {
    return "Invalid Email";
  } else {
    return null;
  }
}
