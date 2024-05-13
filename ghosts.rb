ghosts = {
  :name => ['Inky', 'Pinky', 'Blinky', 'Clyde']
  :age => [4, 5, 6, 7]
  :loves => ['reindeers', 'garden', 'ninjas', 'yarn']
  :net_worth => [0, 14, 18.03, 25]
}

ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end
