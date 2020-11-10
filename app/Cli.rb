require 'pry'

class Cli

    attr_reader :username, :prompt

    def initialize
        @username = ''
        @prompt = TTY::Prompt.new
    end

    def welcome
        puts "Welcome to Colorado Outdoor Guide!"
    end

    def ask_user_name
      @username = prompt.ask("What is your name?", default: "wanderer", active_color: :cyan)
      puts "Not all who wander are lost, but you sure are #{username}! Let us help you!"
    end

end