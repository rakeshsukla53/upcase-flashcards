# Symbol#to_proc

    %w(john paul ringo george).map { |p| p.capitalize }
    # => ["John", "Paul", "Ringo", "George"]
    
you can represent the same thing using the rails method

    %w(john paul ringo george).map(&:capitalize)
    # => ["John", "Paul", "Ringo", "George"]

So what exactly is this

- When a unary ampersand is prepended to an object in Ruby, if the object is not a 
Proc object, the interpreter attempts to convert the object to a proc by calling 
to_proc on it.

- Since :capitalize is a Symbol, not a Proc, Ruby goes along and sends the to_proc 
message to :capitalize, thankfully both Rails and the Ruby Extensions project extend 
the Symbol class with a to_proc 

you can convert `users.select { |u| u.admin? }` to `users.select(&:admin?)`


