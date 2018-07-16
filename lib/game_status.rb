# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =
[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)
  if board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  if board[WIN_COMBINATIONS[1][0]] == board[WIN_COMBINATIONS[1][1]] &&
    board[WIN_COMBINATIONS[1][1]] == board[WIN_COMBINATIONS[1][2]]
    return WIN_COMBINATIONS[2]
  end
  #WIN_COMBINATIONS.each do |combo|
  #  if board[combo[0]] == board[combo[1]] &&
  #    board [combo[1]] == board[combo[2]]
  #    return combo
  #  end
  #end
end


def full?(board)
   board.none?{|char|char == " "}
end

def draw?(board)
  full?(board) && !(won?(board))
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
end
