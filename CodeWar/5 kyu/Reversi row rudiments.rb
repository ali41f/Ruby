=begin

#Introduction:

Reversi is a game usually played by 2 people on a 8x8 board. Here we're only going to consider a single 8x1 row.
Players take turns placing pieces, which are black on one side and white on the other, onto the board with their colour facing up.
If one or more of the opponents pieces are sandwiched by the piece just played and another piece of the current player's colour,
the opponents pieces are flipped to the current players colour.

Note that the flipping stops when the first piece of the player's colour is reached.

#Task:
Your task is to take an array of moves and convert this into a string representing the state of the board after all those moves have been played.

#Input:
The input to your function will be an array of moves.
Moves are represented by integers from 0 to 7 corresponding to the 8 squares on the board. Black plays first,
and black and white alternate turns. Input is guaranteed to be valid. (No duplicates, all moves in range, but array may be empty)

#Output:
8 character long string representing the final state of the board. Use '*' for black and 'O' for white and '.' for empty.

=end

def reversi_row(moves)
  result = "........"
  return result if moves == []
  black = false

  0.upto(moves.length-1) do |i|
    result[moves[i].to_i] = "T"
    1.upto(4) do |l|
      1.upto(5) do |n|
        if black
          result = result.gsub("T#{"*" * n}O","T#{"O" * n}O")
          result = result.gsub("O#{"*" * n}T","O#{"O" * n}T")
        else
          result = result.gsub("T#{"O" * n}*","T#{"*" * n}*")
          result = result.gsub("*#{"O" * n}T","*#{"*" * n}T")
        end
      end
    end
    result[moves[i].to_i] = black ? "O" : "*"
    black = !black
  end
  result
end



def reversi_row1(arr)
  player = '*'
  board = '.' * 8
  arr.each do |ix|
    opponent = case player
                 when '*' then 'O'
                 when 'O' then '*'
               end
    x = ix - 1
    x -= 1 while board[x] == opponent
    board[x...ix] = player * (ix - x) if 0 <= x && board[x] == player
    x = ix + 1
    x += 1 while board[x] == opponent
    board[ix...x] = player * (x - ix) if board[x] == player
    board[ix] = player
    player = opponent
  end
  board
end



EMPTY = '.'
BLACK = '*'
WHITE = 'O'

def sandwich_val(board, move, color, direction)
  change_amount = direction == :left ? -1 : 1
  move_pointer = move += change_amount

  while move_pointer >= 0 && move_pointer < board.length - 1
    return -1 if board[move_pointer] == EMPTY
    return move_pointer if board[move_pointer] == color
    move_pointer += change_amount
  end

  return -1
end

def reversi_row2(moves)
  board = (EMPTY * 8).split('')
  color = BLACK

  moves.each do |move|
    board[move] = color

    left_sandwich = sandwich_val(board, move, color, :left)
    right_sandwich = sandwich_val(board, move, color, :right)

    (left_sandwich..move).to_a.each { |i| board[i] = color } if left_sandwich != -1
    (move..right_sandwich).to_a.each { |i| board[i] = color } if right_sandwich != -1

    color = color == BLACK ? WHITE : BLACK
  end

  board.join('')
end