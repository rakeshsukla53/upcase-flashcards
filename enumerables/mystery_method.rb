names = %w(ben thom joe mark)

h = Hash.new{|h,k| h[k] = []}
names.inject(h) do |acc, name|
  acc = h
  acc[name.length] << name
end
#=> { 3 => ["ben", "joe"], 4 => ["thom", "mark"] }

# okay this is very wrong approach to do this question, since group_by fits
# perfectly for it. Let try doing by group by

puts names.group_by { |names| names.length}





