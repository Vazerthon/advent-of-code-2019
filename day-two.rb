class DayTwo
  @@data = [1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,9,19,1,19,5,23,1,13,23,27,1,27,6,31,2,31,6,35,2,6,35,39,1,39,5,43,1,13,43,47,1,6,47,51,2,13,51,55,1,10,55,59,1,59,5,63,1,10,63,67,1,67,5,71,1,71,10,75,1,9,75,79,2,13,79,83,1,9,83,87,2,87,13,91,1,10,91,95,1,95,9,99,1,13,99,103,2,103,13,107,1,107,10,111,2,10,111,115,1,115,9,119,2,119,6,123,1,5,123,127,1,5,127,131,1,10,131,135,1,135,6,139,1,10,139,143,1,143,6,147,2,147,13,151,1,5,151,155,1,155,5,159,1,159,2,163,1,163,9,0,99,2,14,0,0]
  
  def intcodeMachine(noun, verb)
    opcodeAction = {
      1 => '+',
      2 => '*',
    }
    
    @@data[1] = noun
    @@data[2] = verb
    opcodeIndex = 0

    while @@data[opcodeIndex] != 99
      firstIndex = @@data[opcodeIndex + 1]
      secondIndex = @@data[opcodeIndex + 2]
      resultIndex = @@data[opcodeIndex + 3]
      action = opcodeAction[@@data[opcodeIndex]]

      @@data[resultIndex] = @@data[firstIndex].send(action, @@data[secondIndex])
      
      opcodeIndex += 4
    end

    
    return @@data[0]
  end

  def first
    puts intcodeMachine(12, 2)
  end

  def second
    puts intcodeMachine(62, 55)
  end
end


