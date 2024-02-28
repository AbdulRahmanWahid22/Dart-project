import 'dart:io';
import 'dart:math';
import 'game functionality.dart';
import 'exit.dart';
import 'rating.dart';
import 'scramble_word.dart';
import 'swg.dart';
import 'LoginAndSignUp.dart';
import 'gtn.dart';

void main() {
  stdout.write("do you want to play the game type enter:");
  String? forEnter = stdin.readLineSync();
  var forGame = forEnter!.substring(0, 1).toUpperCase() + forEnter.substring(1);
  var isEnter = false;
  while (isEnter == false) {
    if (forEnter == "enter") {
      print(
          "                           welcome to the Brain Tease game                                   ");
      print(" your game is loading please wait!!!  ");
      print("---------------------------");
      isEnter = true;
    } else if (forEnter != "enter") {
      print("Please type enter");
      forEnter = stdin.readLineSync();
    }
  }
  bool isRegister = false;
  // while (isRegister = false) {
  // if (player=="guest" ||player=="Guest" ||player=="GUEST") {
  // } else {

  // }
  bool isSignup = false;
  while (isSignup == false) {
    print("How'd you like");
    stdout.write("Play as guest or Contiue with  Register/Login:");
    String? player = stdin.readLineSync();
    if (player == "register" ||
        player == "Signup" ||
        player == "signup" ||
        player == "Register" ||
        player == "REGISTER" ||
        player == "Sign up" ||
        player == "sign up" ||
        player == "SIGN UP") {
      signUp();
      print("Did you register type login");
      isSignup = false;
    } else if (player == "login" || player == "LOGIN" || player == "Login") {
      print(login());
      isSignup = true;
    } else if (player == "guest" || player == "GUEST" || player == "Guest") {
      print("Your game is loading please wait");
      isSignup = true;
    }
  }
  stdout.write("Enter your name here: ");
  String? name = stdin.readLineSync();
  print("hi $name which option do you like");
  stdout.write("1.Game 2.Ratings 3.Exit: ");
  String? abc = stdin.readLineSync();
  if (abc == "game" || abc == "GAME" || abc == "Game" || abc == "1") {
    print(game());
  } else if (abc == "ratings" ||
      abc == "Ratings" ||
      abc == "RATINGS" ||
      abc == "2") {
    print(rating());
  } else if (abc == "exit" || abc == "EXIT" || abc == "Exit" || abc == "3") {
    print("Thank you for your time.goodbye");
  }
}
