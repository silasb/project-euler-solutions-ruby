require 'prime'

number = 2_000_000

p Prime.take_while { |n| n <= number }.reduce(:+)
