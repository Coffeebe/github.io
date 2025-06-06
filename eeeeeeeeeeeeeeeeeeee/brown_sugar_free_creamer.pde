int gridSize = 3;
int cellSize;
char[] board;
char currentPlayer= 'X';
boolean gameOver =false;
String winner = "";

 

void setup() {
  size(600, 600);
  cellSize = width/gridSize;
  board = new char[gridSize * gridSize];
  
  for ( int i = 0; i < board.length; i++) {
     board[i] = ' ';
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
     text(winner + " " , width/2, height-50);//wins
   }
 }
 }
 
 void drawGrid() {
   stroke(0);
   //strokeWeight(4);
   
   for (int i =1; i< gridSize; i++) {
     line(i* cellSize,0,i*cellSize,height);
   line(0, i * cellSize,width, i * cellSize);
 }
 }

 
 void drawMarks(){
  textAlign(CENTER, CENTER);
  textSize(cellSize/2);
  for (int i = 0; i < board.length; i++) {
    int row = i / gridSize;
     int col = i % gridSize;
        fill(0);
        text(board[i], col * cellSize + cellSize/ 2, row * cellSize + cellSize/2);
      }
    }

  
 
 void mousePressed(){
 if(gameOver) return;
 
 int row=mouseY / cellSize;
 int col=mouseX / cellsize;
 int index = row * gridSize +col;
 
if(index < board.length && board[index] == ' '){
  board[index] = currentPlayer;

   if (checkWinner()) { 
     gameOver = true;
     winner = currentPlayer+ " wins";
   //} else if (checkWinner()) {
    // gameOver = true;
    // winner = currentPlayer + " wins";
   } else if (isboardFull()) {
     gameOver = true;
     winner = "Draw";
   } else {
     currentPlayer = (currentPlayer == 'X') ? 'O':'X';
   }
  }
 }  
     
 boolean checkWinner() {
for (int i = 0; i < gridSize; i++) {
  if (board[i * gridSize] == currentPlayer && 
  board[i * gridSize + 1] == currentPlayer && 
  board[i * gridSize + 2]== currentPlayer){
    return true;
  }
if (board[i] == currentPlayer && 
board [i + gridSize] == currentPlayer && 
board[i + 2 * gridSize] == currentPlayer) {
  return true;
}
if (board[0] == currentPlayer &&
board[4] == currentPlayer && 
board[8] == currentPlayer) {
    return true; 
  }
if (board[2] == currentPlayer && 
board [4] == currentPlayer && 
board[6] == currentPlayer){
 return true; 
 }
 return false;
}
 boolean isBoardFull(){
    for(int i = 0; i< board.length; i++){
        if(board[i] == ' ') {
        return false;
      }
    }
 return true;
  }
 
