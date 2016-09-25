require 'byebug'

def string_lengths(strings)
  lengths = {}

  strings.each do |string|
    lengths[string] = string.length
  end

  lengths
end

# string_lengths(%w(ben chris mark)) =>
#   { "ben" => 3, "chris" => 5, "mark" => 4 }


# what kind of enumerable is this?
# since we are changing the type of the data its a INJECT

def string_length(strings)
  strings.inject({}) { |acc,n| acc.merge!(n => n.length) }
end

p string_length(%w(ben chris mark))
