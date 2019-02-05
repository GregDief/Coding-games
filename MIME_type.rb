# MIME types are used in numerous internet protocols to associate a media type (html, image, video ...) with the content sent. The MIME type is generally inferred from the extension of the file to be sent.

# You have to write a program that makes it possible to detect the MIME type of a file based on its name.
#   Rules
# You are provided with a table which associates MIME types to file extensions. You are also given a list of names of files to be transferred and for each one of these files, you must find the MIME type to be used.

# The extension of a file is defined as the substring which follows the last occurrence, if any, of the dot character within the file name.
# If the extension for a given file can be found in the association table (case insensitive, e.g. TXT is treated the same way as txt), then print the corresponding MIME type. If it is not possible to find the MIME type corresponding to a file, or if the file doesn’t have an extension, print UNKNOWN.


# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i # Number of elements which make up the association table.
@q = gets.to_i # Number Q of file names to be analyzed.
@n.times do
    # ext: file extension
    # mt: MIME type.
    ext, mt = gets.split(" ")
end
@q.times do
    fname = gets.chomp # One file name per line.
end

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."


# For each of the Q filenames, display on a line the corresponding MIME type. If there is no corresponding type, then display UNKNOWN.
puts "UNKNOWN"
