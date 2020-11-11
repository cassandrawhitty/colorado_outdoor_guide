class User < ActiveRecord::Base
    
    def self.find_by_email(email)
        user = find_by(email: email)
        if user 
            puts "Great to see you again explorer, #{user.given_name} #{user.family_name}"
            user
            return
        else
            puts "I am very sorry but we could not find your email address"
            return
        end
    end

end