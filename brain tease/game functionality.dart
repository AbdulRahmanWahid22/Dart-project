import 'dart:io';
import 'dart:math';

import 'gtn.dart';
import 'rating.dart';
import 'scramble_word.dart';
import 'secret_word.dart';
import 'swg.dart';
import 'main.dart';
import 'ticTacToe.dart';

game() {
  print("welcome to brain teases ");
  print("please type game");
  String? option = stdin.readLineSync();
  if (option == "Game" || option == "game" || option == "1") {
    stdout.write("free or premium:");
    String? games = stdin.readLineSync();
    if (games == "free" || games == "FREE" || games == "Free") {
      print("Which games");
      print("1.snake water and gun 2.word scramble 3.guess the number");
      String free = stdin.readLineSync()!;
      if (free == "1" || free == "snake water and gun") {
        print(swg());
        print(game());
      } else if (free == "2" || free == "word scramble") {
        print(scramble());
        print(game());
      } else if (free == "3" || free == "guess the number") {
        print(gtn());
        print(game());
      }
    } else if (games == "premium" || games == "Premium") {
      print("for unlocking premium game pay 200 PKR");
      stdout.write("do you want to buy premium games(y/n):");
      String? buy = stdin.readLineSync();
      if (buy == "y" || buy == "Y") {
        print("enter your credit card number");
        String? credit = stdin.readLineSync();
        while (true) {
          if (credit!.replaceAll(RegExp(r'\s+'), '').length < 16 ||
              credit.replaceAll(RegExp(r'\s+'), '').length > 16) {
            print("Enter 16 digit number");
            credit = stdin.readLineSync()!;
            continue;
          } else {
            print("Enter the OTP number");

            int otpLength = 6;
            int number = 114408;
            print(number);
            bool isTransaction = false;
            while (isTransaction == false) {
              int otp = int.parse(stdin.readLineSync()!);
              if (otp == number) {
                print("Transaction successful");
                break;
              } else if (otp < otpLength || otp != number) {
                print("transaction unsuccessful");
                isTransaction = false;
              }
            }
            break;
          }
        }
      } else if (buy == "N" || buy == "n") {
        stdout.write("1.Game 2.Ratings 3.Exit:");
        String? abc = stdin.readLineSync();
        if (abc == "game" || abc == "GAME" || abc == "Game" || abc == "1") {
          print(game());
        } else if (abc == "ratings" ||
            abc == "Ratings" ||
            abc == "RATINGS" ||
            abc == "2") {
          print(rating());
        } else if (abc == "exit" ||
            abc == "EXIT" ||
            abc == "Exit" ||
            abc == "3") {
          print("Thank you for your time.goodbye");
        }
      }
      if (games == "premium" || games == "Premium") {
        print("which game do you play");
        print("1.tic tac toe 2.secret word");
        String? premium = stdin.readLineSync();
        if (premium == "1" || premium == "tic tac toe") {
          print(ticTacToe());
          print(game());
        } else if (premium == "2" || premium == "secret word") {
          var isSecret = false;
          while (isSecret == false) {
            print("Which type of level do you play or exit the game ");
            print("1.easy 2.medium  3.hard");
            String? level = stdin.readLineSync();
            if (level == "1" || level == "easy") {
              print(easyWord());
              isSecret = false;
            } else if (level == "2" || level == "medium") {
              print(mediumWord());
              isSecret = false;
            } else if (level == "3" || level == "hard") {
              print(hardWord());
              isSecret = false;
            } else if (level == "Exit" || level == "exit") {
              isSecret = true;
              print(game());
            }
          }
        }
      }
    }
  }
}
