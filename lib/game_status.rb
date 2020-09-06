# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  
  [0,1,2], #Top row0
  [3,4,5], #middle row1
  [6,7,8], #bottom row2
  [0,3,6], #first column3
  [1,4,7], #sec column4
  [2,5,8], #third column5
  [0,4,8], #left diagonal6
  [2,4,6]  #right diagonal7
  
  ]
  
  def won?(board)
    WIN_COMBINATIONS.find do |combo|
      board[combo[0]] == board[combo[1]] &&
      board[combo[1]] == board[combo[2]] &&
      position_taken?(board, combo[0])
    end
  end
  
  
  def full?(board)
    board.all? do |token|
      token == "X" || token == "O"
    end
  end 
  
  
  def draw?(board)
  full?(board) && !won?(board)
  end
  
  
  def over?(board)
    won?(board) || draw?(board) || full?(board)
  end
  
  def winner?(board)
    if won?(board) == winning_combo
    return board[winning_combo.first]
      
    end
    
  end
  
  
  
  
