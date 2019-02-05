



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
