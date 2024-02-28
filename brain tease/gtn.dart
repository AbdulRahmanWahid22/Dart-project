import 'dart:io';
import 'dart:math';

void main() {
  print(gtn());
}

gtn() {
  print("welcone to the guess the number game ");
  print("Enter the guess number");
  var random = Random();
  var randomNumber = random.nextInt(100);
  // print(randomNumber);
  int user = int.parse(stdin.readLineSync()!);
  bool isUser = false;
  var count = 0;

  while (isUser == false) {
    if (user == randomNumber) {
      print("you type the correct number");
      isUser = true;
      count++;
    } else if (user < randomNumber) {
      print("Your number is greater than the actual number");
      print("tryagain");
      isUser = false;
      user = int.parse(stdin.readLineSync()!);
      count++;
    } else if (user > randomNumber) {
      print("your number is less then the actual number");
      print("Try again");
      isUser = false;
      user = int.parse(stdin.readLineSync()!);
      count++;
    }
  }
  print("Your attempt is $count");
  if (count <= 3) {
    print("Amazing");
  } else if (count > 3 && count <= 7) {
    print("nice");
  } else {
    print("better luck next time");
  }
}
