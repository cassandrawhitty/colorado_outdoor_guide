class Cli

    attr_accessor :user
    attr_reader :area, :sport, :chosen_sport, :sport_choice, :chosen_area, :prompt

    def initialize user=nil
        @user = user
        @area = area
        @sport = sport
        @chosen_sport = nil
        @sport_choice = nil  
        @chosen_area = nil
        @prompt = TTY::Prompt.new
    end

    def welcome
        puts "Welcome to Colorado Outdoor Guide!"
    end

    def start
      user_input = prompt.yes?("Is this your first time wandering with us?")
        if user_input
            puts "Not all who wander are lost, but you sure are! Please sign up and let us help you!"
            sign_up
        else 
            sign_in
        end
    end

    def sign_in
        user_input = prompt.ask("Please enter your username:")
        found_user = User.find_by(user_name: user_input)
        if found_user
            self.user = found_user
            puts "Great to see you again explorer, #{user.given_name} #{user.family_name}!"
        else
            user_input = prompt.ask("Your username cannot be confirmed, please enter your email addresss.")
            self.user = User.find_by_email(user_input) 
        end
    end 

    def sign_up
        email = prompt.ask("Please enter your email address:")
        user_name = prompt.ask("Please enter your username:")
        given_name = prompt.ask("Please enter your first name:")
        family_name = prompt.ask("Please enter your last name:")
        self.user = User.create(given_name: given_name,
        family_name: family_name,
        user_name: user_name,
        email: email)
        puts "Thank you for completing registration, please try signing in now."
        sign_in
    end

    def pick_a_sport 
        @chosen_sport = prompt.select("What sport are you interested in learning about, #{user.given_name}?", Sport.all_sports_by_name, symbols: { marker: "🗻"})
        @sport_choice = Sport.find_by(name: @chosen_sport)
        confirm_chosen_sport sport_choice
        # pick_an_area
    end

    def confirm_chosen_sport(sport_choice)
        user_choice = prompt.yes?("You have chosen #{sport_choice.name}!")
        if user_choice
            puts "Yeet!!!" 
           # pick_an_area
        else
            puts "Thats a Negative Ghost Rider..." 
            pick_a_sport
        end
    end 

    def pick_an_area 
        @chosen_area = prompt.select("Which area would you like to learn more about, #{user.given_name}?", Area.all_areas_by_sport(sport_choice), symbols: { marker: "🗻"})
        area_choice = Area.find_by(name: @chosen_area)
    end

end