# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)
  if board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  end

  i = 0
  while i < 8
    if board[WIN_COMBINATIONS[i][0]] == board[WIN_COMBINATIONS[i][1]] &&
      board[WIN_COMBINATIONS[i][1]] == board[WIN_COMBINATIONS[i][2]]
      return WIN_COMBINATIONS[i]
      i += 1
    end
  end

end
