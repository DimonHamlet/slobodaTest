# frozen_string_literal: true

def xerox(copies, xerox1, xerox2)
  # number of copies that we will compare
  total_copies = 0
  # current time
  seconds = 0

  # calculating delay at the very first case
  if xerox1 <= xerox2
    xerox1_delay = 0
    xerox2_delay = xerox1
  else
    xerox1_delay += xerox2
    xerox2_delay = 0
  end

  loop do
    seconds += 1

    # Checking whether first xerox give us a copy at the moment
    if xerox1 + xerox1_delay == seconds
      total_copies += 1
      # Setting time when it have to give a copy next time
      xerox1_delay += xerox1
    end

    # Checking whether second xerox give us a copy at the moment
    if xerox2 + xerox2_delay == seconds
      total_copies += 1
      # Setting time when it have to give a copy next time
      xerox2_delay += xerox2
    end

    # End if we've got enough copies
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
