# frozen_string_literal: true

def xerox(copies, xerox1, xerox2)
  total_copies = 0
  seconds = 0

  if xerox1 <= xerox2
    xerox1_delay = 0
    xerox2_delay = xerox1
  else
    xerox1_delay += xerox2
    xerox2_delay = 0
  end

  loop do
    seconds += 1
    if xerox1 + xerox1_delay == seconds
      total_copies += 1
      xerox1_delay += xerox1
    end

    if xerox2 + xerox2_delay == seconds
      total_copies += 1
      xerox2_delay += xerox2
    end

    break if total_copies >= copies
  end

  seconds
end

puts 'Enter number of copies'
copies_number = gets.chomp.to_i
puts 'Enter time of the frist xerox'
xerox1_speed = gets.chomp.to_i
puts 'Enter time of the second xerox'
xerox2_speed = gets.chomp.to_i

result = xerox(copies_number, xerox1_speed, xerox2_speed)

puts "Minimum time of copying - #{result} seconds"
