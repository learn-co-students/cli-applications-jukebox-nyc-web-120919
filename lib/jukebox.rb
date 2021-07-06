# Add your code here
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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |v, i|
    puts "#{i + 1}. #{v}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  resp = gets.strip
  songs.each_with_index do |v, i|
    # p "this is the user input: #{resp}"
    # p "this is the current index: #{i+1}"
    # p "this is the current song title: #{v.strip}"
    if resp.to_i == i + 1 
      puts "Playing #{v}"
      break
    elsif resp == v.strip
      puts "Playing #{v}"
      break
    else 
       puts "Invalid input, please try again"
       break
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  if input == 'exit'
    exit_jukebox
  elsif input == 'help'
    help
  elsif input == 'list'
    list(songs)
  elsif input == 'play'
    play(songs)
  end
end