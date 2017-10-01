---
# <div style="text-align: center">Tic-Tac-Toe Project</div>
---
## <div style="text-align: center">02~05 - Win Logic</div>

After successfully creating the board and represent cells in corresponding positions, next step comes to defining the win logic.

There are three occurences taken into consideration: win in row, win in column and win in diagonal:

```ruby
def row_win?

end

def column_win?

end

def diagonal_win?

end
```
### Winning Logic in Rows

Let's start defining winning logic with the easiets circumstance `row_in?`:

```ruby
def row_win?  
  @grid.any? do |row|
    row.all? do |cell|
      cell == :X
    end
  end
end
```
This method has got nested iterator blocks involved, going through each row and each cell inside the row with applying an `.all?` method through each cell elements in row as all of elements in a row have to be the same to obtain row win logic, and an `.any?` method through each column as only one of the rows need to suffice the win logic.

The functionality can be tested using a private checking method:

```ruby
def print_and_check
  @b.print_grid
  p @b.row_win?
  puts
end

@b = Board.new
print_and_check

@b.grid[0][0] = :X
print_and_check

@b.grid[0][1] = :X
print_and_check

@b.grid[0][2] = :X
print_and_check
```
The `print_and_check` method has been applied each time after a new piece has been placed in a cell. This should have returned:

```
[ ][ ][ ]
[ ][ ][ ]
[ ][ ][ ]
false

[X][ ][ ]
[ ][ ][ ]
[ ][ ][ ]
false

[X][X][ ]
[ ][ ][ ]
[ ][ ][ ]
false

[X][X][X]
[ ][ ][ ]
[ ][ ][ ]
true
```
which indicates the winning in row logic is functional.

After that, we check for both cases for "X" and "O", thus an argumnet has been passed through the win logic method:

```ruby
def row_win?(marker)
  @grid.any? do |row|
    row.all? do |cell|
      cell == marker
    end
  end
end
```
and write boolean tests for both:

```ruby
def print_and_check
  @b.print_grid
  puts
  p @b.row_win?(:O)
  p @b.row_win?(:X)
end

@b = Board.new
print_and_check

@b.grid[0][0] = :O
print_and_check

@b.grid[0][1] = :O
print_and_check

@b.grid[0][2] = :O
print_and_check
```
which should have returned:

```
[ ][ ][ ]
[ ][ ][ ]
[ ][ ][ ]
false
false

[O][ ][ ]
[ ][ ][ ]
[ ][ ][ ]
false
false

[O][O][ ]
[ ][ ][ ]
[ ][ ][ ]
false
false

[O][O][O]
[ ][ ][ ]
[ ][ ][ ]
true
false
```

### Winning Logic in Columns

For columns, due that it cannot iterate over columns directly, the variable of WIDTH claimed above could be applied to a ranging method `0...WIDTH` to iterate through over the indices from the first row til the last:
>Note: the range uses three dots `...` instead of `..` to exclude WIDTH (3) because the length of an array is always one more than the last index (since starting at 0) 

```ruby
def column_win?(marker)
  (0...WIDTH).any? do |column|
    @grid.all? do |row|
      row[column] == marker
    end
  end
end
```
and carry out the test by rewriting the check method a little bit:

```ruby
def print_and_check
  @b.print_grid
  puts
  puts "Row with all Os?: #{@b.row_win?(:O)}"
  puts "Row with all Xs?: #{@b.row_win?(:X)}"
  puts "Column with all Os?: #{@b.column_win?(:O)}"
  puts "Column with all Xs?: #{@b.column_win?(:x)}"
end

@b = Board.new
print_and_check

@b.grid[0][2] = :O
print_and_check

@b.grid[1][2] = :O
print_and_check

@b.grid[2][2] = :O
print_and_check
```
which should have returned the results of:

```
[ ][ ][ ]
[ ][ ][ ]
[ ][ ][ ]
Row with all Os?: false
Row with all Xs?: false
Column with all Os?: false
Column with all Xs?: false

[ ][ ][O]
[ ][ ][ ]
[ ][ ][ ]
Row with all Os?: false
Row with all Xs?: false
Column with all Os?: false
Column with all Xs?: false

[ ][ ][O]
[ ][ ][O]
[ ][ ][ ]
Row with all Os?: false
Row with all Xs?: false
Column with all Os?: false
Column with all Xs?: false

[ ][ ][O]
[ ][ ][O]
[ ][ ][O]
Row with all Os?: false
Row with all Xs?: false
Column with all Os?: true
Column with all Xs?: false
```
The true statement in the last session could spotted when all third cells in each row have been occupied by "O".

### Winning Logic in Diagonals
 
As for diagonals, there are two ways of winning for 3 x 3 board: either `grid[0][0]`, `grid[1][1]`, `grid[2][2]` are the same, or `grid[0][2]`, `grid[1][1]`, `grid[2][0]` are the same. This logic can be summarised by either all `grid[i][i]` are the same, or all elements of column number counting forwards equal to row number counting backwards. For example, the first row's last element equals to the second row's second last element (in this case equals to the second counting forward) and the last row's first element.

>Note: this logic also apply to row and column number not equal to 3. For instance: in case of `WIDTH` = `HEIGHT` = 4, the second row's second last element is `grid[1][2]`, the third row's third last element is `grid[2][1]` and these two cells both contribute the diagonal case win logic.

However, in order to achieve this, we have to take in count that arrays starts counting with 0, therefore, in conclusion: all `grid[i][-(i + 1)]` are the same.

To achieve this logic, Lambda blocks would be introduced to make the implementation easier:

```ruby
def diagonal_win?(marker)
  [
    lambda { |i| i },
    lambda { |i| -(i + 1) }
  ].any? do |proc|
    (0...HEIGHT).all? do |i|
      @grid[i][proc.call(i)] == marker
    end
  end
end
```
In the implementation, `proc.call(i)` could be either `i` or `-(i + 1)`, results in either all `grid[i][i]` or all `grid[i][-(i + 1)]`are the same which achieved the logic defined above.

The test method could be further modified:

```ruby
def print_and_check
  @b.print_grid
  puts
  puts "Row with all Os?: #{@b.row_win?(:O)}"
  puts "Row with all Xs?: #{@b.row_win?(:X)}"
  puts "Column with all Os?: #{@b.column_win?(:O)}"
  puts "Column with all Xs?: #{@b.column_win?(:X)}"
  puts "Diagonal with all Os?: #{@b.diagonal_win?(:O)}"
  puts "Diagonal with all Xs?: #{@b.diagonal_win?(:X)}"
end

@b = Board.new
print_and_check

@b.grid[0][2] = :X
print_and_check

@b.grid[1][1] = :X
print_and_check

@b.grid[2][0] = :X
print_and_check
```
which should have returned:

```
[ ][ ][ ]
[ ][ ][ ]
[ ][ ][ ]
Row with all Os?: false
Row with all Xs?: false
Column with all Os?: false
Column with all Xs?: false
Diagonal with all Os?: false
Diagonal with all Xs?: false

[ ][ ][X]
[ ][ ][ ]
[ ][ ][ ]
Row with all Os?: false
Row with all Xs?: false
Column with all Os?: false
Column with all Xs?: false
Diagonal with all Os?: false
Diagonal with all Xs?: false

[ ][ ][X]
[ ][X][ ]
[ ][ ][ ]
Row with all Os?: false
Row with all Xs?: false
Column with all Os?: false
Column with all Xs?: false
Diagonal with all Os?: false
Diagonal with all Xs?: false

[ ][ ][X]
[ ][X][ ]
[X][ ][ ]
Row with all Os?: false
Row with all Xs?: false
Column with all Os?: false
Column with all Xs?: false
Diagonal with all Os?: false
Diagonal with all Xs?: true
```
After that, the implementation could be enhanced more modularly be adding a getter and a setter method for the column and row number:
>Note the `y` in front of `x` just corresponding to the convention of "x" for row element while "y" for column element as here the column number comes prior than the row number.

Place these lines below the chunk for `diagonal_win?` method:

```ruby
def [](y, x) # getter method
  @grid[y][x]
end

def []=(y, x, something) # setter method
  @grid[y][x] = something
end
```
and thus the tests could be modified to:

```ruby
def print_and_check
  @b.print_grid
  puts
  puts "Row with all Os?: #{@b.row_win?(:O)}"
  puts "Row with all Xs?: #{@b.row_win?(:X)}"
  puts "Column with all Os?: #{@b.column_win?(:O)}"
  puts "Column with all Xs?: #{@b.column_win?(:X)}"
  puts "Diagonal with all Os?: #{@b.diagonal_win?(:O)}"
  puts "Diagonal with all Xs?: #{@b.diagonal_win?(:X)}"
end

@b = Board.new
print_and_check

@b[0, 2] = :X
print_and_check

@b[1, 1] = :X
print_and_check

@b[2, 0] = :X
print_and_check
```
which should have returned the same results as above.

The setter method could be improved by setting conditions to prevent the setter from modifying existed values in the cell:

```ruby
def []=(y, x, something)
  if @grid[y][x] != :" " && [:X, :O].include?(something)
    @grid[y][x] = something
  else
    false
  end
end
```
By implementing the conditions, whenever there is an empty space in the cell, it is available for assigning in values, on the other hand when it doesn't equal to an empty space also implementig the include method to make only either an "X" or "O" is presenting inside, this will return false thus not assigning any value in to overwrite existed value.

Finally, the complete Board + Win Logic Class implementation:

```ruby
class Board
  WIDTH = 3
  HEIGHT = WIDTH

  attr_accessor :grid

  def initialize
    @grid = Array.new(HEIGHT) { Array.new(WIDTH, :" ") }
  end

  def print_grid
    @grid.each do |row|
      puts
      row.each do |cell|
        print"[#{cell}]"
      end
    end
  end

  def row_win?(marker)
    @grid.any? do |row|
      row.all? do |cell|
        cell == marker
      end
    end
  end

  def column_win?(marker)
    (0...WIDTH).any? do |column|
      @grid.all? do |row|
        row[column] == marker
      end
    end
  end

  def diagonal_win?(marker)
    [
      lambda { |i| i },
      lambda { |i| -(i + 1) }
    ].any? do |proc|
      (0...HEIGHT).all? do |i|
        # i
        # -(i + 1)
        # second_index = sign > 0 ? i : sign * (i + 1)
        @grid[i][proc.call(i)] == marker
      end
    end
  end

  def [](y, x) # getter method
    @grid[y][x]
  end

  def []=(y, x, something) # setter method
    if @grid[y][x] != :" " && [:X, :O].include?(something)
      @grid[y][x] = something
    else
      false
    end
  end

end
```






