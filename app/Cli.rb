class Cli

    attr_accessor :user, :feedback
    attr_reader :area, :sport, :chosen_sport, :sport_choice, :chosen_area, :area_choice, :prompt 

    def initialize user=nil
        @user = user
        @area = area
        @sport = sport
        @chosen_sport = nil
        @sport_choice = nil  
        @chosen_area = nil
        @area_choice
        @feedback = feedback
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
        user_input = prompt.ask("Please enter your username:", required: true)
        found_user = User.find_by(user_name: user_input)
        if found_user
            self.user = found_user
            puts "Great to see you again explorer, #{user.given_name} #{user.family_name}!"
        else
            user_input = prompt.ask("Your username cannot be confirmed, please enter your email addresss:")
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
        puts
        sign_in
    end

    def pick_a_sport 
        @chosen_sport = prompt.select("What sport are you interested in learning about, #{user.given_name}?", Sport.all_sports_by_name, symbols: { marker: "🗻"})
        @sport_choice = Sport.find_by(name: @chosen_sport)
        confirm_chosen_sport sport_choice
    end

    def confirm_chosen_sport(sport_choice)
        user_choice = prompt.yes?("You have chosen #{sport_choice.name}!")
        if user_choice
            puts "Thats what I'm talking about!"
            puts 
        else
            puts "Thats a Negative Ghost Rider. The patern is full..."
            puts
            pick_a_sport
        end
    end 

    def pick_an_area 
        @chosen_area = prompt.select("Which area would you like to learn more about, #{user.given_name}?", Area.all_areas_by_sport(sport_choice), symbols: { marker: "🗻"})
        @area_choice = Area.find_by(area_name: @chosen_area)
        area_choice_info area_choice
        next_move_area
        next_move_sport
        next_move_exit
    end

    def area_choice_info(area_choice)
       puts "Learn about 🏞  #{area_choice.area_name}! 🏞"
       puts 
       puts "Difficulty Level: #{area_choice.difficulty_level}" 
       puts 
       puts "Popularity Rating: #{area_choice.popularity_rating}"
       puts 
       puts "Description: #{area_choice.description}"
       puts
    end

    def next_move_sport
        user_input = prompt.yes?("Is there a different sport you would like to learn about?")
        if user_input
            puts "Let's take a look"
            puts
            pick_a_sport
            next_move_area
        else
            puts "You are now being redirected..."
            puts
            next_move_quit
        end
    end

    def next_move_area
        user_input = prompt.yes?("Are there any other #{sport_choice.name} areas you would like to learn about?")
        if user_input
            puts "Let's take a look"
            puts
            pick_an_area
        else
            puts "Let's get out of here"
            puts
            next_move_sport
        end
    end

    def next_move_quit
        user_input = prompt.yes?("Would you like to leave some user feedback for our devs?")
        if user_input
            puts "Thank you, your opinion matters to us!"
            puts
            collect_feedback
        else
            puts "Thank you for using Colorado Outdoor Guide"
            puts
            puts "We hope you'll explore with us in the future!"
            puts
            exit
        end
    end
    
    def collect_feedback
        puts "Please rate your experience on this app:"
        feedback_num = prompt.slider("Experience:", min: 0, max: 10, step: 1)
        feedback_words = prompt.multiline("Feedback to better improve your experience:")
        self.feedback = Feedback.create(feedback_num: feedback_num, feedback_words: feedback_words)
        puts "Your feedback is greatly appreciated!!!"
        puts
        puts "Thank you for using Colorado Outdoor Guide"
        puts
        puts "We hope you'll explore with us in the future!"
        puts
        exit
    end

end