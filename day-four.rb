class DayFour
  @@data = (240920..789857).to_a

  @@hasRepeatingChar = -> (num) { num.to_s.match(/1{2,2}|2{2,2}|3{2,2}|4{2,2}|5{2,2}|6{2,2}|7{2,2}|8{2,2}|9{2,2}|0{2,2}/) != nil }
  @@hasOneDouble = -> (num) { num.to_s.scan(/1{2,}|2{2,}|3{2,}|4{2,}|5{2,}|6{2,}|7{2,}|8{2,}|9{2,}|0{2,}/).any? { |match| match.length == 2 } }
  @@valuesIncrease = -> (num) { num.to_s.split('').reduce([true, '0']) { | p, c | [p[0] && c.to_i >= p[1].to_i, c] }[0] }

  def first  
    puts @@data
      .select(&@@hasRepeatingChar)
      .select(&@@valuesIncrease)
      .count
  end

  def second
    puts @@data
      .select(&@@valuesIncrease)
      .select(&@@hasOneDouble)
      .count
  end
end
