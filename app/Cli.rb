class Cli

    attr_accessor :user
    attr_reader :area, :sport, :chosen_sport, :sport_choice, :chosen_area, :area_choice, :prompt 

    def initialize user=nil
        @user = user
        @area = area
        @sport = sport
        @chosen_sport = nil
        @sport_choice = nil  
        @chosen_area = nil
        @area_choice
        @prompt = TTY::Prompt.new
    end

    def mountain_image
        puts "
                                                                                                   
                                                                                                    
                                                                                                    
                                                :+`                                                 
                                             -omh+h:                                                
                              `:`         .+dNNs` .yy.                                              
                            .oh/ys-    ./hNMMMh-  ``+d+`                                            
                          -sms` `/dd+:ymMMMMM+`   .: .yh-                                           
                        :yNd:`    .dMdmMMd++M-     -s.`+mo`                                         
                     `/hNNy+o:   -oo+hNd/-  d/      :d: .hd/                 `:`                    
                   `/dMMMNmy.    .-ymh///.  -o       :ms``+my/.            -odNd:                   
                 .+mMMMMMm/`    `smy/oy/`    :      `/mMd- ./yddo:.     `/hNMNodNs.                 
               .omMMMNdNy.      .M/ ss.             -+odMN/   ./yyss+:-odmmMd:`oyMm/                
             -sNMNMNh:o/        .y `:                 +md+.      ``.yNdy/.hy. `msoNMy.              
          `:yNmhohy- ``         ..                   /o-`        `/hy/.   /    .ss/dNh+`            
        `:hmy/..+-                                  ``          -+/.       `/    .+-y+os-           
      `/ys:`   `              `/        `o            ````.....--...````   +m. :`  ``/..o+`         
    `:/:`        /`  `     `. sN-    +. +N: ``.-:/ossyyyyysssoooooossssssoomMs-ms     `  -+-        
    `   ..`     `m+ :s     /y-mMy`  .my:mMmyhhdhyo+:-.`````.--://++++////++++osyho/:.`     -:`      
         .://:..sMN:hN- ``.mMhMMNo+ohNmhyo/:.`    `.-/+oooooooossyyhddhs++++ooooo++++++:.`   -.     
            `-/+sdmdNNdyyhhmmdhyo+/-.`        `-////:-`   `---.------:/+o+.      `.-:------.  ``    
                   ``....``                  `.`          `                                         
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                        
        "
    end

    def welcome
        print TTY::Box.frame { "Welcome to Colorado Outdoor Guide!" }
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
            puts "Yeet!!!" 
        else
            puts "Thats a Negative Ghost Rider..." 
            pick_a_sport
        end
    end 

    def pick_an_area 
        @chosen_area = prompt.select("Which area would you like to learn more about, #{user.given_name}?", Area.all_areas_by_sport(sport_choice), symbols: { marker: "🗻"})
        @area_choice = Area.find_by(area_name: @chosen_area)
        area_choice_info area_choice
    end

    def area_choice_info(area_choice)
       puts "Learn about 🏞  #{area_choice.area_name}! 🏞"
       puts 
       puts "Difficulty Level: #{area_choice.difficulty_level}" 
       puts 
       puts "Popularity Rating: #{area_choice.popularity_rating}"
       puts 
       puts "Description: #{area_choice.description}"
    end

    def collect_feedback
        feedback_array = []
        puts "Please rate your experience on this app:"
        feedback_num = prompt.slider("Experience:", min: 0, max: 10, step: 1)
        feedback_array << feedback_num
        feedback_words = prompt.multiline("Feedback to improve this app:")
        feedback_array << feedback_words
        exit
    end

end