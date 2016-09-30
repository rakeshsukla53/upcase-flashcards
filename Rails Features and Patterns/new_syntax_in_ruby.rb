def initialize(file, permissions:)
end

# you have seen the kind of parameter list here
# permissions is a required keyword argument

<<-STATEMENT
The syntax shown is for required keyword arguments.

Here's an example:

def foo(bar:)
  puts bar
end

foo # => ArgumentError: missing keyword: bar
foo(bar: 'baz') # => 'baz'
STATEMENT


