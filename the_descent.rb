# Destroy the mountains before your starship collides with one of them. For that, shoot the highest mountain on your path.
#   Rules
# At the start of each game turn, you are given the height of the 8 mountains from left to right.
# By the end of the game turn, you must fire on the highest mountain by outputting its index (from 0 to 7).

# Firing on a mountain will only destroy part of it, reducing its height. Your ship descends after each pass.

loop do
  max = 0
  imax = 0
  8.times do |i|
    mountain_h = gets.to_i # represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
    if mountain_h > max
      max = mountain_h
      imax = i
    end
  end
  puts imax
end
