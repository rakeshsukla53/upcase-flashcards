# why we need getter and setter method for the following names

    class Game
      def initialize(name, options={})
        @name = name
        @year = options[:year]
        @system = options[:system]
      end
    
      def name
        @name
      end
    
      def year
        @year
      end
    
      def system
        @system
      end
    end
    
there is a way to set and get the values by classifying them into 
`attr_accessor` and `attr_reader` and `attr_writer`    

we can use this, basically it provides both getter and setter operations

    class Game
      attr_accessor :name, :year, :system
      def initialize(name, options={})
        @name = name
        @year = options[:year]
        @system = options[:system]
      end
    
    end

# attr_reader

    class Game
      attr_accessor :name, :year, :system
      attr_reader :created_at
    
      def initialize(name, options={})
        @name = name
        @year = options[:year]
        @system = options[:system]
        @created_at = Time.now
      end
    end
    
suppose here you don't want anyone to change the `created_at` after the game is initalized
then you need to use the `attr_reader` which only provides the get property

# class variables

    class Library
      attr_accessor :games
    
      def initialize(games)
        self.games = games # this is a class variable so it can be used anywhere
      end
    
      def has_game?(search_game)
        for game in games
          return true if game == search_game
        end
        false
      end
      
      def add_game(game)
        games << game
      end
      
    end

















