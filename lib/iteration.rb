def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  phrases = []
  for x in src
    index = src.index(x)
    phrases[index] = "I love " + src[index][0] +" and " + src[index][1] + " on my pizza"
  end
  return phrases
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  new_array = []
  for x in src
    index = src.index(x)
    new_array.push(src[index].max)
  end
  return new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  for x in src:
    index = src.index(x)
    if(src[index][0] % 2 == 0 && src[index][1] % 2 == 0)
      total = total + src[index][0] + src[index][1]
    end
  end
  return total
end
end
