# code your #valid_move? method here
def valid_move?(board, index)
  if index < 0 and index > 8
    return false
  else
    return !(position_taken?(board, index))
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
index = 0
valid_move?(board, index)

board = [" ", " ", "X", " ", " ", " ", " ", "O", " "]
index = 5
valid_move?(board, index)

board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
index = 4
valid_move?(board, index)

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
index = 100
valid_move?(board, index)
