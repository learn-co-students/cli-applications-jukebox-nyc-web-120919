# Add your code here


# require_relative '../bin/jukebox'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |name, index|
    puts (index + 1).to_s + ". " + name
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  song = songs.find{|x| x == input} || (input.to_i - 1 >= 0 && input.to_i - 1 <= songs.length && songs[input.to_i - 1])
  if(song)
    puts "Playing " + song
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  if(input == "help")
    help()
  elsif(input == "list")
    list()
  elsif(input == "exit")
    exit()
  else
    play(input)
  end
end

