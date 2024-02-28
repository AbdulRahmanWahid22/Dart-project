import 'dart:io';
import 'dart:math';


swg() {
  var random = Random();
  var randomNumber = random.nextInt(100);
  // print(randomNumber);
  print("Enter your choice(snake,water and gun)");
  bool isPlayer = false;
  var player = stdin.readLineSync()!;
  while (isPlayer == false) {
    if (player == "snake" || player == "water" || player == "gun") {
      isPlayer = true;
    } else {
      print("please answer in snake water and gun");
      player = stdin.readLineSync()!;
    }
  }
  var computer;
  if (randomNumber <= 0 || randomNumber <= 33) {
    computer = "snake";
    print("computer's choice is $computer");
  } else if (randomNumber < 33 || randomNumber <= 66) {
    computer = "water";
    print("computer's choice is $computer");
  } else if (randomNumber <= 66 || randomNumber <= 100) {
    computer = "gun";
    print("computer's choice is  $computer");
  }
  if (computer == "snake" && player == "snake" ||
      computer == "water" && player == "water" ||
      computer == "gun" && player == "gun") {
    print("game is draw");
  } else if (computer == "snake" && player == "water" ||
          computer == "water" &&
              player == "gun" // ||  computer == "gun " && player == "snake"
      ) {
    print("computer is win");
  } else if (computer == "gun" && player == "snake") {
    print("computer is win ");
  } else if (computer == "water" && player == "snake" ||
          computer == "gun" && player == "water"
      // ||  computer == "snake " && player == "gun"
      ) {
    print("player is win");
  } else if (computer == "snake" && player == "gun") {
    print("player is win");
  }
}
