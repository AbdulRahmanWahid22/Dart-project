import 'dart:io';

void main() {
  print(ticTacToe());
}

ticTacToe() {
  // Initialize the board
  List<String> board = List.filled(9, ' ');

  // Current player
  String currentPlayer = 'X';
  bool isPosition = true;
  // Game loop
  while (true) {
    // Print the board
    printBoard(board);

    // Get player's move
    stdout.write('Player $currentPlayer\'s turn. Enter a position (1-9):');
    int position = int.parse(stdin.readLineSync()!);

    if (position > 9 || position < 1) {
      print("invalid move.Please enter a number between 1 and 9");
      continue;
    }

    // Make the move
    if (board[position - 1] == ' ') {
      board[position - 1] = currentPlayer;
    } else {
      print('Position already taken. Try again.');
      continue;
    }

    // Check for a winner
    if (checkWinner(board, currentPlayer)) {
      printBoard(board);
      print('Player $currentPlayer wins!');
      break;
    }

    // Check for a draw
    if (!board.contains(' ')) {
      printBoard(board);
      print('It\'s a draw!');
      break;
    }

    // Switch player
    currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
  }
}

void printBoard(List<String> board) {
  print(' ${board[0]} | ${board[1]} | ${board[2]} ');
  print('---+---+---');
  print(' ${board[3]} | ${board[4]} | ${board[5]} ');
  print('---+---+---');
  print(' ${board[6]} | ${board[7]} | ${board[8]} ');
}

bool checkWinner(List<String> board, String player) {
  // Check rows, columns, and diagonals
  return (board[0] == player && board[1] == player && board[2] == player) ||
      (board[3] == player && board[4] == player && board[5] == player) ||
      (board[6] == player && board[7] == player && board[8] == player) ||
      (board[0] == player && board[3] == player && board[6] == player) ||
      (board[1] == player && board[4] == player && board[7] == player) ||
      (board[2] == player && board[5] == player && board[8] == player) ||
      (board[0] == player && board[4] == player && board[8] == player) ||
      (board[2] == player && board[4] == player && board[6] == player);
}
