require "pry"

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 


def list(songs_arr)
  songs_arr.each do |song|
    puts "#{songs_arr.index(song) + 1}. #{song}"
  end 
end 

def play(songs_arr)
  puts 'Please enter a song name or number:'
  target = 'Invalid input, please try again'
  value = gets.strip
  if(value.to_i == 0)
    songs_arr.each do |song|
      if(song == value)
        target ="Playing #{song}"
      end
    end 
  elsif (value.to_i.between?(1, 10))
    target = "Playing #{songs_arr[value.to_i - 1]}"
  end
  puts target
end 


def exit_jukebox
  puts 'Goodbye'
end

def choice
  puts "Please enter a command:"
  gets.chomp()
end

def run(songs_arr)
  puts 'Please enter a command:'
  command = gets.strip
  while command != 'exit' do 
    if(command == 'help')
      help 
      command = choice
    elsif (command == 'list')
      list(songs_arr)
      command =choice
    elsif (command == 'play')
      play(songs_arr)
      command = choice
    else 
      puts 'Invalid command'
      help
      command = choice
    end
  end 
      exit_jukebox

end 
