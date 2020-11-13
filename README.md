# Colorado Outdoor Guide

An app where outdoor lovers can find areas in Colorado where they can enjoy rock climbing, dirt biking, skiing, snowboarding, and hiking!

## General Info
This is a CLI app that allows users to create an account, choose which sports they want to learn about, and then get a list of ten areas in Colorado where they can experience their sport of choice.  Users will be able to see the name of the area, the difficulty level for that particular sport, the popularity rating of the area, and a description of the area in relation to the sport they're interested in.  

## Inspiration

We thought of creating this project when we realized that we would love access to a quick guide that suggests ten places relatively close to Denver where people can enjoy the sport of their choice.

## Demo Video

(coming soon)

## Technologies
💻 Ruby <br />
💻 Active Record <br />
💻 Rake <br />
💻 SQLite3 <br />
💻 tty-prompt <br />

## Setup

In order to experience this app, users must clone this Github repository and open it in their code editor.  Install the Ruby gems by running ```bundle install```.  Create your local database by running ```rake db:migrate```.  Seed the database by running ```rake db:seed```.  After doing all of that, start using the CLI app by running ```ruby runner.db```.  Checkout a new branch.

## Instructions

The first thing you'll be asked to do is sign up or sign in to the app.  If you're a returning user, then you need only enter the username you created.  If you're a new user, then you'll be asked to provide your username, email, first name, and last name.  After that, you'll be prompted to choose which sport you'd like to learn about.  Then, after you've chosen a sport, you'll see ten different areas where you can do that sport and information about those ten areas.  Choose which one you'd like to learn more about, and read about that area!  Once you're done using the app, please submit feedback about the app before exiting. 

## Code Examples

``` 
def start
        user_input = prompt.yes?("Is this your first time wandering with us?")
        if user_input
            puts "Not all who wander are lost, but you sure are! Please sign up and let us help you!"
            sign_up
        else 
            sign_in
        end
    end
  ```
```
  class Area < ActiveRecord::Base

  belongs_to :sport
  
  def self.all_areas_by_sport sport_choice
    self.all.select do |area|
        area.sport_id == sport_choice.id
    end.pluck(:area_name)
  end

end 
```

## Status

We are consistently trying to improve the user's experience with this app.  We value feedback from our community.  Some ideas we have for improving this app are:

🦾 Adding more areas for each sport <br />
🦾 Improved fluidity between the user class and the sport class within the back end code

## Contact 

[Linkedin](https://www.linkedin.com/in/cassandra-whitty-0a184a1a4/)  Cassandra Whitty <br />
[Linkedin](https://www.linkedin.com/in/kevin-glasgow-21795154/)  Kevin Glasgow







