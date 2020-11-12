class User < ActiveRecord::Base

    has_many :sports
    
    def self.find_by_email(email)
        user = find_by(email: email)
        if user 
            puts "Great to see you again explorer, #{user.given_name} #{user.family_name}!"
        else
            puts "I am very sorry but we could not find your email address at this time. Please try again later."
        end
    end

end