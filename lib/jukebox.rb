require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#  "Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.strip
 
#puts say_hello(users_name)

def help
  puts "I accept the following commands:" 
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

#def find_song(entry,songs)
 # songs.find do |track|
    # "song title                   track #      index "
   # track.start_with?(entry) || entry.to_i - 1 == songs.index(track)
  #if songs.include?(entry) || songs.index(track).to_s  == entry.to_i
   #   binding.pry
   #   return track
  #  end  
  #binding.pry
 # end
#end

def play(songs)
  puts "Please enter a song name or number:"
  entry = gets.chomp
  if (1..songs.length).to_a.include?(entry.to_i)
    puts "Playing #{songs[entry.to_i - 1]}"
  elsif songs.include?(entry)
    puts "Playing #{entry}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do | song, index |
    puts "#{index+1}. #{song}"
  end
end
  
def exit_jukebox
  puts "Goodbye"
end

def run(array)
  puts "Please enter a command:"
  entry = gets.strip
  if entry == "play"
    play(array)
  elsif entry == "exit"
    exit_jukebox
  elsif entry == "list"
    list(array)
  elsif entry == "help"
   help
 end
end