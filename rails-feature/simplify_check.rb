
users = ['rakesh', 'bikash', 'ekasnsh']

if users.size > 1
  # Handle multiple users.
  puts 'r'
end

# Small, but useful, many? saves the day:

if users.many?
  # Handle multiple users.
end

# This is a pleasant step toward expressive code.

