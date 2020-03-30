# frozen_string_literal: true

puts 'Enter X(candy weight)'
x = gets.chomp.to_i
puts 'Enter Y(tangerine weight)'
y = gets.chomp.to_i
puts 'Enter Z(apple weight)'
z = gets.chomp.to_i
puts 'Enter W(total weight)'
w = gets.chomp.to_i

variations = 0
last = w + 1

# Solution for preferably small data because of algorithm time-efficiency
(0..last).step(x).each do |candy|
  (0..last).step(y).each do |tangerine|
    (0..last).step(z).each do |apple|
      # Checking every possible variation
      sum = candy + tangerine + apple
      variations += 1 if sum == w
    end
  end
end

puts("Maximum gift options - #{variations}")
