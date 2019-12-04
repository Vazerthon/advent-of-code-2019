require_relative 'day-one'
require_relative 'day-two'

day = nil
dayName = nil
part = nil
puts "Day number..."
day = gets.to_i

case day
when 1
    day = DayOne.new
    dayName = "One"
when 2
    day = DayTwo.new
    dayName = "Two"
else 
    puts "Incorrect day"
    exit 1
end

puts "Part number..."
part = gets.to_i

case part
when 1
    part = 'first'
when 2
    part = 'second'
else
    puts "Incorrect part"
    exit 1
end

puts "Running Day #{dayName}, #{part} part"
day.public_send(part)
