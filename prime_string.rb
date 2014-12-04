require 'prime'

$alphabet = "abcdefghijklmnopqrstuvwxyz".split("")

def josh?
  print "Type 'exeunt' if you wish to leave. Otherwise, type something in, and I will tell you if this is a Josh string: "
  input = gets.strip

  if input == 'exeunt'
    exit
  end

  str_sum = 0
  str_arr = input.split("")
  $break = false

  str_arr.each {
    |letter|
    if $alphabet.index(letter) == nil
      puts "Please only use lowercase letters."
      $break = true
      break
    else
      str_sum += $alphabet.index(letter).to_i + 1
      #add to account for zero-indexing vs ASCII value of alphabet starting from 1
    end
  }
  if !$break
    if Prime.prime?(str_sum)
      puts str_sum.to_s + ": YES"
    else
      puts str_sum.to_s + ": NO"
    end
  end
  josh?
end

josh?