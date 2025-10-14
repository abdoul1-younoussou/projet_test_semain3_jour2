# multiples.rb

def is_multiple_of_3_or_5?(n)
  n > 0 && (n % 3 == 0 || n % 5 == 0)
end

def sum_of_3_and_5_multiples(limit)
  sum = 0
  (0...limit).each do |i|
    sum += i if is_multiple_of_3_or_5?(i)
  end
  sum
end

