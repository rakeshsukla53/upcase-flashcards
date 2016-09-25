(1..6).mystery_method { |i| i.even? }  #=> [[2, 4, 6], [1, 3, 5]]

# The method is partition.

"Returns two arrays, the first containing the elements of enum for which the block evaluates to true, the second containing the rest."

(1..6).partition { |i| i.even? }
#=> [[2, 4, 6], [1, 3, 5]]

