int gridSize = 3;
int cellSize;
char[][] board;
char currentPlayer= 'X';
boolean gameOver =false;
String winner = "";

void setup() {
  size(600, 600);
  cellSize = width/gridSize;
  board = new char[gridSize][gridSize];
  
  
  for(int i = 0; i < gridSize; i++) {
    for (int j = 0; j < gridSize; j++) {
     board[i][j] = ' ';
    }
  }
}
 
 void draw() {
 background(255);
 drawGrid();
 drawMarks();
 
 if (gameOver) {
   textAlign(CENTER, CENTER);
   textSize(32);
   fill(0);
   if (winner.equals("Draw")) {
     text("Draw", width / 2, height - 50);
   } else {
     text(winner+ " wins" , width/2, height-50);
   }
 }
 }
 
 void drawGrid() {
   stroke(0);
   strokeWeight(4);
   
   for (int i =1; i< gridSize; i++) {
     line(i* cellSize,0,i*cellSize,height);
   line(0, i * cellSize,width, i * cellSize);
 }
 }

 
 void drawMarks(){
  textAlign(CENTER, CENTER);
  textSize(cellSize/2);
  for (int i = 0; i < gridSize; i++) {
    for (int j = 0; j <gridSize; j++) {
      if (board[i][j] !=' ') {
        fill(0);
        text(board[i][j],j* cellSize+ cellSize/ 2, i* cellSize + cellSize/2);
      }
    }
  }
 }
  
 
 void mousePressed(){
 if(gameOver) return;
 
 int row=mouseY / (width/3);
 int col=mouseX / (height/3);
 
 
 if(row < 3 && col < 3 && board[row][col] == ' ') {
   board[row][col] = currentPlayer;
   if (checkWinner()) { 
     gameOver = true;
     winner = currentPlayer+ " ";
   } else if (checkWinner()) {
     gameOver = true;
     winner = currentPlayer + " ";
   } else if (isboardFull()) {
     gameOver = true;
     winner = "draw";
   } else {
     
     currentPlayer = (currentPlayer == 'X') ? 'O': 'X';
   }
 }
 }  
     
 boolean checkWinner() {
  for(int i = 0; i < 3; i++){
  if(board[i][0] == currentPlayer && board[i][1]== currentPlayer && board[i][2] == currentPlayer) return true;
  if(board[0][i] == currentPlayer && board[1][i] == currentPlayer && board[2][i] == currentPlayer) return true;
  }
   if(board[0][0] == currentPlayer && board[1][1] == currentPlayer && board[2][2] == currentPlayer) return true;
   if(board[0][2] == currentPlayer && board[1][1] == currentPlayer && board[2][0]== currentPlayer) return true;

 
 return false;
 
 }
  
  boolean isboardFull(){
    for(int i = 0; i< gridSize;  i++){
      for(int j = 0; j< gridSize;  j++){
        if(board[i][j] == ' ') return false;
      }
    }
 return true;
  }
