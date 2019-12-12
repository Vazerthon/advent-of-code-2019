require_relative 'day-one'
require_relative 'day-two'
require_relative 'day-three'
require_relative 'day-four'

puts "Day number..."
day = {
    1 => [DayOne.new, "one"],
    2 => [DayTwo.new, "two"],
    3 => [DayThree.new, "three"],
    4 => [DayFour.new, "four"],
}[gets.to_i]

puts "Part number..."
part = {
    1 => 'first',
    2 => 'second',
}[gets.to_i]

if (!day || !part)
    puts "Dodgy input. See ya!"
    exit 0
end

puts "Running Day #{day[1]}, #{part} part"
day[0].send(part)
