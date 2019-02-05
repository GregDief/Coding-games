In stations and airports you often see this type of screen:

#Have you ever asked yourself how it might be possible to simulate this display on a good old terminal? We have: with ASCII art!
 # Rules
#ASCII art allows you to represent forms by using characters. To be precise, in our case, these forms are words. For example, the word "MANHATTAN" could be displayed as follows in ASCII art:


# #  #  ### # #  #  ### ###  #  ###
### # # # # # # # #  #   #  # # # #
### ### # # ### ###  #   #  ### # #
# # # # # # # # # #  #   #  # # # #
# # # # # # # # # #  #   #  # # # #

​#Your mission is to write a program that can display a line of text in ASCII art in a style you are given as input.



@l = 4 #gets.to_i
@h = 5 #gets.to_i
@t = "JP" #gets.chomp
@row_result = []
i = 0
STDERR.puts @t

@tab = [
" #  ##   ## ##  ### ###  ## # # ###  ## # # #   # # ###  #  ##   #  ##   ## ### # # # # # # # # # # ### ### ",
"# # # # #   # # #   #   #   # #  #    # # # #   ### # # # # # # # # # # #    #  # # # # # # # # # #   #   # ",
"### ##  #   # # ##  ##  # # ###  #    # ##  #   ### # # # # ##  # # ##   #   #  # # # # ###  #   #   #   ## ",
"# # # # #   # # #   #   # # # #  #  # # # # #   # # # # # # #    ## # #   #  #  # # # # ### # #  #  #       ",
"# # ##   ## ##  ### #    ## # # ###  #  # # ### # # # #  #  #     # # # ##   #  ###  #  # # # #  #  ###  #  "]
    STDERR.puts "l vaut #{@l}"

@h.times do
  #row = gets.chomp
  @row_result = ""
  @t.each_char   do |x|
    range = (x.ord - 'A'.ord)
    STDERR.puts "index : #{range * @l}"
    @row_result += @tab[i][range*@l .. (range * @l) + 3]
    STDERR.puts @row_result
  end
    puts @row_result
    i += 1
end
  #p @row_result
