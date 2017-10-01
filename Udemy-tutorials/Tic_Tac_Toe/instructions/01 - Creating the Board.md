---
# <div style="text-align: center">Tic-Tac-Toe Project</div>
---
## <div style="text-align: center">01 - Creating the Board</div>
First, decide how the board will be presented:

```ruby
class Board

end
```
The board should be look either like:

```ruby
"
[ ][ ][ ]
[ ][ ][ ]
[ ][ ][ ]
"
```
with `[X]` & `[O]` inside sqaure brackets 

or vertical lines to separate:

```ruby
"
| | | |
| | | |
| | | |
"
```
with letters between vertical lines `|X|O|X|` 

This tutorial will stick with the first one of sqaure brackets. Therefore, put the grid into the initialize method:

```ruby
def initialize
  @grid = [
    [[], [], []],
    [[], [], []],
    [[], [], []]
  ]
end
```
Then, add an attribute accessor to make it available to be called outside the class:

```ruby
class Board

  attr_accessor :grid

  def initialize
    @grid = [
      [[], [], []],
      [[], [], []],
      [[], [], []]
    ]
  end
end

p Board.new.grid
```

Printing out this would give the following returned:

```
[[[], [], []], [[], [], []], [[], [], []]]
```
which is close to but not exactly same as the expected shown above, thus a method has to be applied to beautify the arrangement.

```ruby
def print_grid
  @grid.each do |row|
    puts
    row.each do
      print '[ ]'
    end
  end
end
```
By calling:

```ruby
Board.new.print_grid
```
which returns:

```ruby
[ ][ ][ ]
[ ][ ][ ]
[ ][ ][ ]
```
as expected.

Now, clean and refactor the code:

```ruby
class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(3) { Array.new(3, :" ") }
  end

  def print_grid
    @grid.each do |row|
      puts
      row.each do |cell|
        print"[#{cell}]"
      end
    end
  end

end
```
>note the "cells" on the board are symbols, 

and test whether it works:

```ruby
b = Board.new
b.grid[0][1] = :X
b.print_grid
```
which should have returned:

```
[ ][X][ ]
[ ][ ][ ]
[ ][ ][ ]
```
as expected.

In order to make the build implementation modular, height and width could be claimed as variable at the very beginning:

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

end
```















