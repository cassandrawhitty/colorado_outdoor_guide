require_relative 'config/environment'

app = Cli.new

app.welcome
app.start
app.pick_a_sport
app.pick_an_area

binding.pry





