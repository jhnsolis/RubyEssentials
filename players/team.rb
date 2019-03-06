class Team
    include Enumerable #Lots fo stuff from Ruby

    attr_accessor :name, :players

    def initialize(name)
        @name = name
        @players = []
    end

    def add_players (*players) #Splat
        @players += players
    end

    def to_s
        "#{name}: team: #{players.join(", ")}"
    end

    def each #This is required to use Enumerable module
        @players.each {|player| yield player}
    end
end
