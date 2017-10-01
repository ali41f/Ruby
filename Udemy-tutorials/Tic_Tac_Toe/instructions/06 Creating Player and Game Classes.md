
---
# <div style="text-align: center">Tic-Tac-Toe Project</div>
---
## <div style="text-align: center">06 - Creating Player and Game Classes</div>
In order to make the game running logically and smoothly, it would be wise to created separate files for handling different purposes.

```
touch main.rb game.rb player.rb
```
and setup the Game class and Player class corresponding to game and player files as conventions.

The players will be initialized with two properties `name` and `marker`. 

```ruby
class Player

  def initialize(name, marker)
    @name = name
    @marker = marker
    @score = 0
  end

end
```
To successfully initialize a game, players and a new game board should be passed in. Thus need to be required.

```ruby
require_relative 'board'

class Game

  def initialize(players)
    @players = players
    @board = Board.new
  end

end
```
and in the main file, every external classes involved should be required:

```ruby
require_relative 'game'
require_relative 'player'

players = [
  Player.new('Tevin', :X),
  Player.new('Sasha', :O)
]

p game = Game.new(players)
```
After all basic information setup in three files, run main file and the following should be returned:

```
#<Game:0x000099746237f8 @players=[#<Player:0x00009974623898 @name="Tevin", @marker=:X, @score=0>, #<Player:0x00009974623848 @name="Sasha", @marker=:O, @score=0>], @board=#<Board:0x000099746237d0 @grid=[[:" ", :" ", :" "], [:" ", :" ", :" "], [:" ", :" ", :" "]]>>
```
#### Summary
- If the Game class is the intermediary between the Players and the Board, then Player and Board shouldn't reference each other directly
- A game creates a new, but gets its players passed in from outside (because the players might play more than one game)

