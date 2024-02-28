import 'dart:io';
import 'dart:math';

void main() {
  print("welcome to easy level");
  print(easyWord());
  print("welcome to medium level");
  print(mediumWord());
  print("welcome to hard level");
  print(hardWord());
}

easyWord() {
  print("Welcome to the secret word game");
  List<String> secret = [
    "cache",
    "inheritance",
    "singleton",
    "middleware",
    "boolean",
    "loop",
    "varaible",
    "algorithm",
    "function"
  ];
  Random random = Random();
  var secretWord = secret[random.nextInt(secret.length)];
  var words = secretWord.split("");
  // print(" secret words are $secretWord");
  String? guessSecret;
  if (secretWord == "cache") {
    print("hint :Temporary storage used to speed up data access");
  } else if (secretWord == "middleware") {
    print("hint : Facilitates communication between software components.");
  } else if (secretWord == "inheritance") {
    print(
        "hint:OOP concept allowing a class to inherit properties and behaviors from another.");
  } else if (secretWord == "singleton") {
    print("Hint: Design pattern ensuring only one instance of a class exists");
  } else if (secretWord == "boolean") {
    print("Hint: Represents true or false values.");
  } else if (secretWord == "loop") {
    print("Hint: Repeats a block of code until a condition is met.");
  } else if (secretWord == "variable") {
    print("Hint: A placeholder for storing data.");
  } else if (secretWord == "function") {
    print("Hint: A block of code that performs a specific task.");
  } else if (secretWord == "algorithm") {
    print("Hint: A step-by-step procedure for solving a problem.");
  }

  bool isAtempt = false;
  int attempt = 5;
  int hint = 3;
  while (isAtempt == false) {
    stdout.write("Enter the secret word here:");
    guessSecret = stdin.readLineSync()!;
    if (guessSecret == secretWord) {
      print("congulartion you won");
      isAtempt = true;
    } else if (guessSecret != secretWord) {
      print("nice guess but not true");
      attempt--;
      print("Attempt left:$attempt");
      //   stdout.write("do you want to get more hint(yes or no):");
      //   String? player = stdin.readLineSync();
      //   if (player == "yes") {
      //     print("the letter starts with ${words[0]}");
      //     hint--;
      //   } else {}
    }
    if (attempt == 0) {
      print("You've run out of attepmpt");
      print("The secret word was:$secretWord");
      isAtempt = true;
    }
  }
}

mediumWord() {
  print("Welcome to the medium level");
  List<String> secret = [
    "recursion",
    "encapsulation",
    "asynchronous",
    "binary",
    "abstraction",
    "pointer",
    "iterable",
    "constructor",
  ];
  Random random = Random();
  var secretWord = secret[random.nextInt(secret.length)];
  var words = secretWord.split("");
  // print(" secret words are $secretWord");
  String? guessSecret;
  if (secretWord == "recursion") {
    print("Hint: Function calling itself.");
  } else if (secretWord == "asynchronous") {
    print("Hint: Concurrent execution without waiting.");
  } else if (secretWord == "encapsulation") {
    print("Hint: Data hiding and bundling methods together.");
  } else if (secretWord == "binary") {
    print("Hint: Base-2 numeral system.");
  } else if (secretWord == "abstraction") {
    print("Hint: Simplifying complex systems for easier understanding.");
  } else if (secretWord == "pointer") {
    print("Hint: Stores memory addresses.");
  } else if (secretWord == "iterable") {
    print("Hint: Represents a collection of elements that can be iterated.");
  } else if (secretWord == "constructor") {
    print("Hint: Special method for initializing objects.");
  }

  bool isAtempt = false;
  int attempt = 5;
  // int hint = 3;
  while (isAtempt == false) {
    stdout.write("Enter the secret word here:");
    guessSecret = stdin.readLineSync()!;
    if (guessSecret == secretWord) {
      print("congulartion you won");
      isAtempt = true;
    } else if (guessSecret != secretWord) {
      print("nice guess but not true");
      attempt--;
      print("Attempt left:$attempt");
      //   stdout.write("do you want to get more hint(yes or no):");
      //   String? player = stdin.readLineSync();
      //   if (player == "yes") {
      //     print("the letter starts with ${words[0]}");
      //     hint--;
      //   } else {}
    }
    if (attempt == 0) {
      print("You've run out of attepmpt");
      print("The secret word was:$secretWord");
      isAtempt = true;
    }
  }
}

hardWord() {
  print("Welcome to the hard level");
  List<String> secret = [
    "monomorphism",
    "reflection",
    "metaprogramming",
    "null",
    "type",
    "mixin",
  ];
  Random random = Random();
  var secretWord = secret[random.nextInt(secret.length)];
  // var words = secretWord.split("");
  // print(" secret words are $secretWord");
  String? guessSecret;
  if (secretWord == "monomorphism") {
    print(
        "Hint: Optimization technique where a function has a single type at runtime.");
  } else if (secretWord == "reflection") {
    print(
        "Hint: Ability of a program to inspect and modify its own structure.");
  } else if (secretWord == "metaprogramming") {
    print(
        "Hint: Technique of writing code that manipulates code during runtime.");
  } else if (secretWord == "null") {
    print("Hint: Represents an absence of a value.");
  } else if (secretWord == "type") {
    print("Hint: Represents the type of an object or variable.");
  } else if (secretWord == "mixin") {
    print("Hint: Reusable code blocks for multiple inheritance-like behavior.");
  }

  bool isAtempt = false;
  int attempt = 5;
  int hint = 3;
  while (isAtempt == false) {
    stdout.write("Enter the secret word here:");
    guessSecret = stdin.readLineSync()!;
    if (guessSecret == secretWord) {
      print("congulartion you won");
      isAtempt = true;
    } else if (guessSecret != secretWord) {
      print("nice guess but not true");
      attempt--;
      print("Attempt left:$attempt");
      //   stdout.write("do you want to get more hint(yes or no):");
      //   String? player = stdin.readLineSync();
      //   if (player == "yes") {
      //     print("the letter starts with ${words[0]}");
      //     hint--;
      //   } else {}
    }
    if (attempt == 0) {
      print("You've run out of attepmpt");
      print("The secret word was:$secretWord");
      isAtempt = true;
    }
  }
}
