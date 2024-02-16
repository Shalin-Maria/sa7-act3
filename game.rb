room_points = {
  "Room 1" => 5,
  "Room 2" => 10,
  "Room 3" => 15
}
score = 0
loop do
  puts "Current score: #{score}"
  puts "Choose a room (or 'exit' to quit):"
  room_options = room_points.keys.join(", ")
  puts room_options
  choice = gets.chomp
  break if choice.downcase == "exit"
  if room_points.key?(choice)
    score += room_points[choice]
    puts "You entered #{choice} and gained #{room_points[choice]} points."
  else
    puts "Invalid room. Please try again."
  end
end
puts "Game over! Your final score is #{score} points."