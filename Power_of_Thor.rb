# Your program must allow Thor to reach the light of power.
#   Rules
# Thor moves on a map which is 40 wide by 18 high. Note that the coordinates (X and Y) start at the top left! This means the most top left cell has the coordinates "X=0,Y=0" and the most bottom right one has the coordinates "X=39,Y=17".

# Once the program starts you are given:
# the variable lightX: the X position of the light of power that Thor must reach.
# the variable lightY: the Y position of the light of power that Thor must reach.
# the variable initialTX: the starting X position of Thor.
# the variable initialTY: the starting Y position of Thor.
# At the end of the game turn, you must output the direction in which you want Thor to go among:

# N (North)
# NE (North-East)
# E (East)
# SE (South-East)
# S (South)
# SW (South-West)
# W (West)
# NW (North-West)
# Each movement makes Thor move by 1 cell in the chosen direction.
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}

# game loop
loop do
  remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
  directiony = ""
  directionx = ""
  if @light_y < @initial_ty
    directiony = "N"
    @initial_ty -= 1
  elsif @light_y > @initial_ty
    directiony = "S"
    @initial_ty += 1
  end
  if @light_x > @initial_tx
    directionx = "E"
    @initial_tx += 1
  elsif @light_x < @initial_tx
    directionx = "W"
    @initial_tx -= 1
  end
  puts directiony + directionx
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    # A single line providing the move to be made: N NE E SE S SW W or NW
end
