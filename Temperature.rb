# n this exercise, you have to analyze records of temperature to find the closest to zero.


# Sample temperatures
# Here, -1 is the closest to 0.
#   Rules
# Write a program that prints the temperature closest to 0 among input data. If two numbers are equally close to zero, positive integer has to be considered closest to zero (for instance, if the temperatures are -5 and 5, then display 5).

@n = gets.to_i # the number of temperatures to analyse
inputs = gets.split(" ")
abs = []
temps = []
for i in 0..(@n-1)

    # t: a temperature expressed as an integer ranging from -273 to 5526
    t = inputs[i].to_i
    b = t - 0.1
    c = b.abs
    abs << c
    temps << t

end

index_close = abs.index(abs.min)
# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

if temps == []
  puts 0
else
  puts temps[index_close]
end
