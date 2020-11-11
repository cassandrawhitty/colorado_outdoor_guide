rock_climbing = Sport.create(user, area, "rock climbing", "climbing rope, helmet, harness, locking carabiners, quick draws, trad rack, chalk bag, chalk, belay device, sunscreen, backpack, food and water")
hiking = Sport.create(user, area, "hiking", "layers, warm hat, sun hat, sunglasses, supportive shoes, sunscreen, backpack, food and water, hiking poles (optional)")

rock_climbing_area1 = Area.create("Rampart Range", "Beginner/Intermediate", 4.6, "This is an area with bouldering, toprope climbing, trad climbing, and sport climbing options.")
rock_climbing_area2 = Area.create("North Table", "Beginner/Intermediate", 4.6, "This is an area with many accessible toproping options, along with trad climbing and sport climbing.  There is very little boudering at this location.")
rock_climbing_area3 = Area.create("Eldorado Canyon", "Advanced", 4.8, "This is an area with a large variety of trad climbing, some sport climbing, some toproping, and some bouldering.")
rock_climbing_area4 = Area.create("Boulder Canyon", "Intermediate/Advanced", 4.8, "This is an area with a large variety of trad climbing, a large variety of sport climbing, a little bit of toproping, and a little bit of bouldering.")
rock_climbing_area5 = Area.create("Boulder Flatirons", "Beginner/Intermediate/Advanced", 4.7, "This is an area with a large variety of trad climbing, a variety of bouldering, some sport climbing, and a little bit of toproping.")

hiking_area1 = Area.create("South Valley Park", "Beginner", 4.7, "This location has very unpaved accessible trails for biking, hiking, and horseback riding.")
hiking_area2 = Area.create("Deer Creek Canyon Park", "Intermediate", 4.7, "This area has unpaved and accebile trails.  The trails mostly range from easy to moderate.  These trails are used for hiking and mountain biking.")
hiking_area3 = Area.create("Meyer Ranch Park", "Beginner", 4.6, "This area has unpaved and accebile trails.  The trails range from easy to moderate.  These trails are used for hiking and the trails range from 1 to 6 miles in length.")
hiking_area4 = Area.create("Staunton State Park", "Intermediate", 4.8, "This area has unpaved trails.  The trails are mostly moderate.  These trails are used for hiking and mountain biking.  There is a $9 entrance fee.")
hiking_area5 = Area.create("Arapahoe and Roosevelt National Forests", "Intermediate/Advanced", 4.8, "This is a large area with many different types of unpaved adventures.  These trails are used for hiking, mountain biking, and backpacking.")