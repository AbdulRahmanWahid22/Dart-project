import 'dart:io';
import 'dart:convert';

void main() {
  print(signUp());
  print(login());
}

String? userEmail;
String? userPassword;
String? userName;

bool signUp() {
  print("For Signup: Enter the Details Of you");
  print('----------------------------------------------------');
  String name;
  do {
    stdout.write('Enter Your Name: ');
    name = stdin.readLineSync()!.trim();

    if (name.isEmpty) {
      print('Please Enter Your Name');
    }
  } while (name.isEmpty);
  userName = name;
  print('----------------------------------------------------');
  String email;
  do {
    stdout.write('Enter Your Email Address: ');
    email = stdin.readLineSync()!.trim();

    if (email.isEmpty) {
      print('Please Enter Your Email Address');
    }
  } while (email.isEmpty);
  userEmail = email;
  print('----------------------------------------------------');
  String password;
  do {
    stdout.write('Create a Password: ');
    password = stdin.readLineSync()!.trim();

    if (password.isEmpty) {
      print('Please Create a Password');
    }
  } while (password.isEmpty);
  userPassword = password;
  print('----------------------------------------------------');

  // Check if user already exists
  if (checkUserExists(email)) {
    return false;
  } else {
    // Save user details to JSON file
    saveUserDetails(name, email, password);
    print('Sign up successful.');
    return true;
  }
}

bool login() {
  print("Enter the Details");
  print('----------------------------------------------------');
  String email;
  do {
    stdout.write('Enter Your Email Address: ');
    email = stdin.readLineSync()!.trim();

    if (email.isEmpty) {
      print('Please Enter Your Email Address: ');
    }
  } while (email.isEmpty);
  userEmail = email;
  print('----------------------------------------------------');
  String password;
  do {
    stdout.write('Enter Your Password: ');
    password = stdin.readLineSync()!.trim();

    if (password.isEmpty) {
      print('Please Enter Your Password: ');
    }
  } while (password.isEmpty);
  userPassword = password;
  print('----------------------------------------------------');

  // Check if user exists and login
  if (checkUserExists(email, password)) {
    print("Login successful.");
    return true;
  } else {
    print("Invalid email address or password.");
    print("-----------------------------------------");
    print(' please again login ');

    print("-----------------------------------------");

    login();
    return false;
  }
}

bool checkUserExists(String email, [String? password]) {
  try {
    File file = File('users.json');
    if (!file.existsSync()) {
      return false;
    }
    String contents = file.readAsStringSync();
    if (contents.isEmpty) {
      return false; // If the file is empty, return false
    }
    Map<String, dynamic> users = jsonDecode(contents);
    if (password != null) {
      // Check if the user exists during login
      return users.containsKey(email) && users[email]['password'] == password;
    } else {
      // Check if the user exists during signup
      return users.containsKey(email);
    }
  } catch (e) {
    print('Error checking user existence: $e');
    return false;
  }
}

void saveUserDetails(String name, String email, String password) {
  try {
    File file = File('users.json');
    Map<String, dynamic> userDetails = {
      'name': name,
      'email': email,
      'password': password
    };
    Map<String, dynamic> users = {};
    if (file.existsSync()) {
      String contents = file.readAsStringSync();
      if (contents.isNotEmpty) {
        users = jsonDecode(contents);
      }
    }
    users[email] = userDetails;
    file.writeAsStringSync(jsonEncode(users));
  } catch (e) {
    print('Error saving user details: $e');
  }
}
