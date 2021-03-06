def bottles n
  if n < 0
      return "Please enter a positive number."
  elsif n == 0
      return "zero"
  end
  num_string = ""
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  left = n
  write = left / 1000
  left = left - (write * 1000)
  if write > 0
      thousands = english_number write
      num_string = num_string + thousands + " thousand"
      if left > 0
          num_string = num_string + " "
      end
  end
  write = left / 100
  left = left - (write * 100)
  if write > 0
      hundreds = english_number write
      num_string = num_string + hundreds + " hundred"
      if left > 0
          num_string = num_string + " "
      end
  end
  write = left / 10
  left = left - (write * 10)
  if write > 0
      if write == 1 && left > 0
          num_string = num_string + teenagers[left - 1]
          left = 0
      else
          num_string = num_string + tens_place[write - 1]
      end
      if left > 0
          num_string = num_string + "-"
      end
  end
  write = left
  left = 0
  if write > 0
      num_string = num_string + ones_place[write - 1]
  end
  num_string
end

def bottles_of_beer number
    if number < 0
        puts "Please enter a positive number"
    elsif number == 0
        puts "Please enter a number greater than 0"
    elsif number == 2
        puts "Two bottles of beer on the wall, two bottles of beer, take one down, pass it around, one bottle of beer on the wall!"
        puts "One bottle of beer on the wall, one bottle of beer, take one down, pass it around, no bottles of beer on the wall!"
    else
        puts "#{(bottles number).capitalize} bottles of beer on the wall, #{bottles number} bottles of beer, take one down, pass it around, #{bottles (number - 1)} bottles of beer on the wall!"
        number = number - 1
        if number >= 0
            bottles_of_beer number
        end
    end
end