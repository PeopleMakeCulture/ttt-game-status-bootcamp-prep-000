# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)

  WIN_COMBINATIONS.each do |combo|
    return combo if (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ||
    board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" )
  end

  # Not empty
  if board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  end

end

def full?(board)
  board.none?{|i| i == " "}
end
