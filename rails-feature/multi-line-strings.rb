instructions = <<-INSTRUCTIONS
Here is a long set of instructions.

You've got to do a lot of things:

1. This thing.
2. That thing.
3. Even more
INSTRUCTIONS

puts instructions

class Messages
  def self.welcome
    <<-WELCOME
This is the welcome message.

However, because it's a heredoc, we need to unindent it all the way out :(.

Otherwise Ruby thinks the indentation we include is part of the string.
WELCOME
  end
end

puts Messages.welcome

# how can you have the messages also indented

class Messages
  def self.welcome
    <<-WELCOME.strip_heredoc
      This is the welcome message.

      Since we're using strip_heredoc, we can indent it as usual.

      Much nicer, no?
    WELCOME
  end
end

put Messages.welcome

# this is a part of the rails framework and that's why not running locally
# use strip_heredoc if you want to strip all the leading whitespaces






















