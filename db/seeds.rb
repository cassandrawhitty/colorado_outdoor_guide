rock_climbing = Sport.create(user, name: "rock climbing", equipment: "climbing rope, helmet, harness, locking carabiners, quick draws, trad rack, chalk bag, chalk, belay device, sunscreen, backpack, food and water")
hiking = Sport.create(user, name: "hiking", equipment: "layers, warm hat, sun hat, sunglasses, supportive shoes, sunscreen, backpack, food and water, hiking poles (optional)")

Area.create(rock_climbing, area_name: "Rampart Range", difficulty_level: "Beginner/Intermediate", popularity_rating: 4.6, description: "This is an area with bouldering, toprope climbing, trad climbing, and sport climbing options.")
Area.create(rock_climbing, area_name: "North Table", difficulty_level: "Beginner/Intermediate", popularity_rating: 4.6, description: "This is an area with many accessible toproping options, along with trad climbing and sport climbing.  There is very little boudering at this location.")
Area.create(rock_climbing, area_name: "Eldorado Canyon", difficulty_level: "Intermediate/Expert", popularity_rating: 4.8, description: "This is an area with a large variety of trad climbing, some sport climbing, some toproping, and some bouldering.")
Area.create(rock_climbing, area_name: "Boulder Canyon", difficulty_level: "Intermediate/Advanced", popularity_rating: 4.8, description: "This is an area with a large variety of trad climbing, a large variety of sport climbing, a little bit of toproping, and a little bit of bouldering.")
Area.create(rock_climbing, area_name: "Boulder Flatirons", difficulty_level: "Beginner/Intermediate/Expert", popularity_rating: 4.7, description: "This is an area with a large variety of trad climbing, a variety of bouldering, some sport climbing, and a little bit of toproping.")

Area.create(hiking, area_name: "South Valley Park", difficulty_level: "Beginner", 4.7, "This location has very unpaved accessible trails for biking, hiking, and horseback riding.")
Area.create(hiking, area_name: "Deer Creek Canyon Park", difficulty_level: "Intermediate", 4.7, "This area has unpaved and accebile trails.  The trails mostly range from easy to moderate.  These trails are used for hiking and mountain biking.")
Area.create(hiking, area_name: "Meyer Ranch Park", difficulty_level: "Beginner", 4.6, "This area has unpaved and accebile trails.  The trails range from easy to moderate.  These trails are used for hiking and the trails range from 1 to 6 miles in length.")
Area.create(hiking, area_name: "Staunton State Park", difficulty_level: "Intermediate", 4.8, "This area has unpaved trails.  The trails are mostly moderate.  These trails are used for hiking and mountain biking.  There is a $9 entrance fee.")
Area.create(hiking, area_name: "Arapahoe and Roosevelt National Forests", difficulty_level: "Intermediate/Advanced", 4.8, "This is a large area with many different types of unpaved adventures.  These trails are used for hiking, mountain biking, and backpacking.")

