class User < ActiveRecord::Base

    has_many :sports
    
    def self.find_by_email(email)
        self.all.select do |user|
            if user.email == email
                puts "Great to see you again explorer, #{user.given_name} #{user.family_name}"
                return user
            else
                puts "I am very sorry but we could not find your email address at this time. Please try again later"
                exit
            end

        end
    end
end