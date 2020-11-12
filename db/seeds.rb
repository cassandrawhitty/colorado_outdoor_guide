Area.destroy_all
Sport.destroy_all

ski_snowboard = Sport.create(user_id: User, name: "Ski/Snowboarding", equipment: "Required: Skis/Snowboard, Winter Jacket, Winter Pants, Winter Gloves, Helmet, Goggles \n Optional: Beacon, Facecovering, Thermals, Hand-warmers, Sunscreen, Chapstick, Tissues")
dirt_biking = Sport.create(user_id: User, name: "Dirt Biking", equipment: "Required: Dirtbike, Long Sleeve Jersey/Shirt, Long Pants, Boots, Gloves, Goggles, Hydration-Pac, Snacks \n Optional: GPS, Sunscreen, Chest/Back Protection, Arm Protection, Knee Protection, Tool Kit, Extra Gas, Tire Repair Kit") 
rock_climbing = Sport.create(user_id: User, name: "Rock Climbing", equipment: "climbing rope, helmet, harness, locking carabiners, quick draws, trad rack, chalk bag, chalk, belay device, sunscreen, backpack, food and water")
hiking = Sport.create(user_id: User, name: "Hiking", equipment: "layers, warm hat, sun hat, sunglasses, supportive shoes, sunscreen, backpack, food and water, hiking poles (optional)")

Area.create(sport_id: rock_climbing.id, area_name: "Rampart Range", difficulty_level: "Beginner to Intermediate", popularity_rating: 4.6, description: "This is an area with bouldering, toprope climbing, trad climbing, and sport climbing options.")
Area.create(sport_id: rock_climbing.id, area_name: "North Table", difficulty_level: "Beginner to Intermediate", popularity_rating: 4.6, description: "This is an area with many accessible toproping options, along with trad climbing and sport climbing.  There is very little boudering at this location.")
Area.create(sport_id: rock_climbing.id, area_name: "Eldorado Canyon", difficulty_level: "Intermediate to Expert", popularity_rating: 4.8, description: "This is an area with a large variety of trad climbing, some sport climbing, some toproping, and some bouldering.")
Area.create(sport_id: rock_climbing.id, area_name: "Boulder Canyon", difficulty_level: "Intermediate to Advanced", popularity_rating: 4.8, description: "This is an area with a large variety of trad climbing, a large variety of sport climbing, a little bit of toproping, and a little bit of bouldering.")
Area.create(sport_id: rock_climbing.id, area_name: "Boulder Flatirons", difficulty_level: "Beginner to Expert", popularity_rating: 4.7, description: "This is an area with a large variety of trad climbing, a variety of bouldering, some sport climbing, and a little bit of toproping.")
Area.create(sport_id: rock_climbing.id, area_name: "Clear Creek Canyon", difficulty_level: "Intermediate to Expert", popularity_rating: 4.9, description: "The vast majority of the climbing here is sport climbing, but there is also some trad climbing, bouldering, and a little bit of toproping.")
Area.create(sport_id: rock_climbing.id, area_name: "Shelf Road", difficulty_level: "Intermediate to Expert", popularity_rating: 4.5, description: "This area has almost exclusively sport climbing routes.")
Area.create(sport_id: rock_climbing.id, area_name: "Garden of the Gods", difficulty_level: "Beginner to Expert", popularity_rating: 4.8, description: "There are quite a few sport routes and trad routes and bouldering routes. There are a few toprope routs as well.")
Area.create(sport_id: rock_climbing.id, area_name: "Rocky Mountain National Park", difficulty_level: "Beginner to Expert", popularity_rating: 4.9, description: "This area is known for alpine climbing. There is also trad climbing and some bouldering at this location.")
Area.create(sport_id: rock_climbing.id, area_name: "Rifle Mountain Park", difficulty_level: "Expert", popularity_rating: 4.8, description: "This area has sport climbing only.")

Area.create(sport_id: hiking.id, area_name: "South Valley Park", difficulty_level: "Beginner", popularity_rating: 4.7, description: "This location has unpaved accessible trails for biking, hiking, and horseback riding.")
Area.create(sport_id: hiking.id, area_name: "Deer Creek Canyon Park", difficulty_level: "Intermediate", popularity_rating: 4.7, description: "This area has unpaved and accebile trails.  The trails mostly range from easy to moderate.  These trails are used for hiking and mountain biking.")
Area.create(sport_id: hiking.id, area_name: "Meyer Ranch Park", difficulty_level: "Beginner", popularity_rating: 4.6, description: "This area has unpaved and accebile trails.  The trails range from easy to moderate.  These trails are used for hiking and the trails range from 1 to 6 miles in length.")
Area.create(sport_id: hiking.id, area_name: "Staunton State Park", difficulty_level: "Intermediate", popularity_rating: 4.8, description: " This area has unpaved trails.  The trails are mostly moderate.  These trails are used for hiking and mountain biking.  There is a $9 entrance fee.")
Area.create(sport_id: hiking.id, area_name: "Arapahoe and Roosevelt National Forests", difficulty_level: "Intermediate/ to Advanced", popularity_rating: 4.8, description: "This is a large area with many different types of unpaved adventures.  These trails are used for hiking, mountain biking, and backpacking.")
Area.create(sport_id: hiking.id, area_name: "Roxorough State Park", difficulty_level: "Beginner to Intermediate", popularity_rating: 4.8, description: "This area has unpaved and accessible trails mostly ranging from easy to moderate.")
Area.create(sport_id: hiking.id, area_name: "Chatfield State Park", difficulty_level: "Beginner to Intermediate", popularity_rating: 4.5, description: "There are many trails with different levels of difficult at this location.")
Area.create(sport_id: hiking.id, area_name: "North Cheyenne Canon Park", difficulty_level: "Beginner to Expert", popularity_rating: 4.8, description: "There are many unpaved trails with a large range of distances and difficulty levels at this location.")
Area.create(sport_id: hiking.id, area_name: "Boulder Open Space", difficulty_level: "Intermediate to Expert", popularity_rating: 4.4, description: "There is a large range of mostly moderate and hard trails in this area.")
Area.create(sport_id: hiking.id, area_name: "White River National Forest", difficulty_level: "Intermediate to Expert", popularity_rating: 4.8, description: "This is an area with a variety of mostly moderate and hard trails.")

Area.create(sport_id: ski_snowboard.id, area_name: "Telluride Ski Resort", difficulty_level: "Beginner/Expert", popularity_rating: 4.8, 
    description: "\"Telluride Ski Resort is a ski resort located in Mountain Village, Colorado right next to the Town of Telluride. 
    The Telluride Ski Resort is a year-round destination located in the southwest corner of Colorado. The resort is in the northwestern San Juan Mountains, part of the Rocky Mountains, and is home to the highest concentration of 13,000 and 14,000 foot peaks in North America.
    Telluride Ski Resort has over 2,000 skiable acres and spans between the historic town of Telluride, Colorado and the modern alpine community of Mountain Village, Colorado. 
    Telluride began as a mining camp in the late 1800s and is currently a National Historic Landmark District. While Telluride is well known for its advanced terrain the resort has over 50% beginner and intermediate runs. The top of resort features primarily expert and advanced terrain. 
    Telluride is located 330 miles from Denver, Colorado. The Ski Resort has been ranked #1 in the annual Conde Nast Traveler's Reader's Choice Survey in 2013, 2014 and 2015 and was named #1 small city in America in 2015.\"\n - Wikipedia")

Area.create(sport_id: ski_snowboard.id, area_name: "Vail Ski Resort", difficulty_level: "Beginner/Expert", popularity_rating: 4.5, 
    description: "\"Vail Ski Resort is a ski resort located near the town of Vail in Eagle County, Colorado. 
    At 5,289 acres, it is the third-largest single-mountain ski resort in the United States, behind Big Sky and Park City, featuring seven bowls and intermediate gladed terrain in Blue Sky Basin.
    Vail opened in 1962 and is one of 37 mountain resorts owned and operated by Vail Resorts, which also operates three other nearby ski resorts (Beaver Creek, Breckenridge, and Keystone). 
    Vail Mountain has three sections: The Front-Side, Blue Sky Basin, and the Back Bowls. Most of the resort is wide open terrain with all types of trails. 
    There are cruising runs accessible from most front side and Blue Sky Basin lifts, as well as the wide open Back Bowls, glades, and chutes. Vail Village is modeled on Bavarian village styles, with pedestrian streets. 
    Unlike other Colorado ski towns such as Aspen, Breckenridge, or Steamboat Springs, which existed as 19th century mining towns prior to the establishment of their ski resorts, the Vail village was built when the resort opened.\"\n - Wikipedia")

Area.create(sport_id: ski_snowboard.id, area_name: "Aspen Snowmass", difficulty_level: "Beginner/Expert", popularity_rating: 4.4, 
    description: "\"Aspen Snowmass is a ski resort located in the town of Snowmass Village near Aspen, Colorado. The ski area is owned and operated by the Aspen Skiing Company as part of the Aspen/Snowmass complex. It was opened on December 17, 1967. 
    Snowmass is the largest of the four Aspen/Snowmass mountains, comprising 3,362 acres. The mountain is most notable for its wide cruiser runs, family-friendly atmosphere, and extensive ski-in/ski-out lodging. 
    Despite its family reputation, the resort also contains several terrain parks, extensive extreme skiing terrain, mogul runs, and gladed terrain. 
    Snowmass has the most vertical feet of skiing of any ski area in the United States, but only when the Cirque poma is running. 
    There are 17 lifts at Snowmass: 8 high-speed quads (Two Creeks, Elk Camp, Alpine Springs, Sheer Bliss, Big Burn, Coney Glade, Sam's Knob, High Alpine), 1 high-speed six pack (Village Express), 
    2 gondolas (the Sky Cab - better known as the 'Skittles' and Elk Camp Gondola), 2 quads (Meadows and Assay Hill), 1 double (Campground) and 2 pull lifts (Scooper and The Cirque).\"\n - Wikipedia")

Area.create(sport_id: ski_snowboard.id, area_name: "Steamboat Ski Resort", difficulty_level: "Beginner/Expert", popularity_rating: 4.4, 
    description: "\"Steamboat Ski Resort is a major ski area in northwestern Colorado, operated by the Steamboat Ski & Resort Corporation in Steamboat Springs. 
    It is located on Mount Werner, a mountain in the Park Range in the Routt National Forest. The ski area first opened on January 12, 1963. The ski area has 169 named trails spread over 2,965 acres. 
    Of those, 14% are classified as beginner-level, 42% as intermediate, and 44% as advanced.\"\n - Wikipedia") 

Area.create(sport_id: ski_snowboard.id, area_name: "Winter Park Resort", difficulty_level: "Beginner/Expert", popularity_rating: 4.3, 
    description: "\"Winter Park Resort is an alpine ski resort in Winter Park, Colorado in the Rocky Mountains. Located just off U.S. Highway 40, the resort is about a 90-minute drive from Denver, Colorado.
    The resort consists of three interconnected mountain peaks (and seven 'territories') — Winter Park, Mary Jane, and Vasquez Ridge — which share a common lift ticket. 
    Mary Jane, opened in 1975, has a separate base area and is known for its moguls, tree skiing, hidden huts and generally more difficult terrain. 
    The 435 acres of backcountry terrain in Vasquez Cirque were opened to skiing, with the relocation of the former Outrigger triple chairlift to the backside of Parsenn Bowl provides easier escape to Mary Jane after descending Vasquez Cirque. 
    In 2018 Winter Park Resort was named 'Best ski resort in North America' as voted by the readers of USA Today.[7] In 2019 Winter Park Resort was named 'Number 1 Ski Resort in North America'.\"\n - Wikipedia")

Area.create(sport_id: ski_snowboard.id, area_name: "Beaver Creek Resort", difficulty_level: "Beginner to Expert", popularity_rating: 4.2, 
    description: "\"Beaver Creek Resort is a major ski resort in the western United States, near Avon, Colorado. The resort comprises three villages, the main Beaver Creek Village, Bachelor Gulch, and Arrowhead to the west. 
    The resort is owned and operated by Vail Resorts which operates multiple additional resorts. Beaver Creek is a regular host of World Cup events, usually in early December.\"\n - Wikipedia")

Area.create(sport_id: ski_snowboard.id, area_name: "Breckenridge Ski Resort", difficulty_level: "Beginner/Expert", popularity_rating: 4.1, 
    description: "\"Breckenridge Ski Resort  is an alpine ski resort in the western United States, in Breckenridge, Colorado. 
    Just west of the Continental Divide in Summit County, it is perennially one of the most visited ski resorts in the western hemisphere. 
    Breckenridge is owned and operated by Vail Resorts, Inc. The first Winter Dew Tour was held annually since 2008, however in 2020, the Winter Dew Tour moved to Copper Mountain and plans to stay for the next few years.\"\n - Wikipedia")

Area.create(sport_id: ski_snowboard.id, area_name: "Crested Butte Ski Resort", difficulty_level: "Beginner/Expert", popularity_rating: 3.9, 
    description: "\"Crested Butte Ski Resort  is a ski resort located at Mount Crested Butte in Gunnison County, Colorado, United States. 
    Known for offering extreme and diverse terrain, the mountain is considered one of the birthplaces of freeskiing. They have helped revolutionize skiing by starting freeski and Telemark skiing extremes competitions. 
    Crested Butte has also been called home for many revolutionary skiers such as Seth Morrison and FIS Alpine Ski World Cup and Winter Olympics athlete Wendy Fisher, as well as extreme sports film production company Matchstick Productions. 
    Crested Butte Mountain Resort, is considered an adventure ski destination. It has abundant green and blue groomed trails to more advanced longer trails and the famous extreme limits of the North Face and Headwall.\"\n - Wikipedia")

Area.create(sport_id: ski_snowboard.id, area_name: "Arapahoe Basin Ski Area", difficulty_level: "Beginner/Expert", popularity_rating: 3.9, 
    description: "\"Arapahoe Basin Ski Area, often shortened to A-Basin, or simply The Basin, is an alpine ski area in the Rocky Mountains of the United States, in the Arapaho National Forest of Colorado. Arapahoe Basin is located south of Loveland Pass on U.S. Highway 6 in Summit County. 
    Arapahoe Basin is known for its extended season—usually staying open until early June, and sometimes into early July, whereas most other northern ski areas close in early April. 
    Arapahoe Basin is mostly known for advanced and expert terrain, but also has runs for the novice and intermediate skier, as well as a children's program.
    In February 2019, Arapahoe Basin announced it was ending its 20+ year partnership with Vail Resorts and its Epic Pass at the end of the 2018-19 season. On August 2 2019, Arapahoe Basin announced it would join the Ikon Pass starting with the 2019-2020 winter season.\"\n - Wikipedia")

Area.create(sport_id: ski_snowboard.id, area_name: "Copper Mountain", difficulty_level: "Beginner/Expert", popularity_rating: 3.9, 
    description: "\"Copper Mountain is a ski resort located in Summit County, Colorado, about 75 miles west of Denver on Interstate 70. 
    The resort has 2,465 acres of in-bounds terrain under lease from the U.S. Forest Service, White River National Forest, Dillon Ranger District. 
    The ski area is most notable as being designated by the National Forest Service as having the most organized skier layout of any ski resort. The beginner runs are located entirely to the west and graduate evenly in difficulty as the lifts progress to the east. 
    They are isolated from the busier and more difficult runs in a natural fashion. Similarly, the intermediate runs are located even more to the east and develop in difficulty in a smooth manner. 
    More difficult runs are to the far east, with the most difficult runs being on the backside. The most southern Tucker Mountain provides only double black diamond runs.\"\n - Wikipedia")

Area.create(sport_id: dirt_biking.id, area_name: "Rampart Range" , difficulty_level: "Beginner/Expert", popularity_rating: 5, 
    description: "\"Located in the Pike-San Isabel National Forest about 35 miles southwest of Denver are nearly 200 miles of trails for OHVs, (Off Highway Vehicles). This area is known as the Rampart Range Motorized Recreation Area. 
    The trails, some of which were originally stage coach roads and game trails, traverse several hundred square miles of national forest at elevations ranging from about 6,500 feet to over 8,500 feet. 
    There are currently over 30 designated trails with terrain and challenges varied enough for riders of all abilities to find enjoyable. 
    The South Platte Ranger District of the USDA Forest Service and the Rampart Range Motorized Management Committee (RRMMC) maintain the trail system.\"\n - Rampartrange.org")

Area.create(sport_id: dirt_biking.id, area_name: "Rainbow Falls OHV Area" , difficulty_level: "Beginner/Intermediate", popularity_rating: 4.4, 
    description: "\"You'll find so much to do here that you may want to camp and stay the weekend. It is a really fun area with corkscrew high banks, tricky narrow sections and great scenery. There is a large staging area at the trailhead.\"\n - onX Offroad")

Area.create(sport_id: dirt_biking.id, area_name: "Stillwater Pass" , difficulty_level: "Beginner/Intermediate", popularity_rating: 4.7, 
    description: "\"The drive is nice and easy to an amazing lake with incredible mountain views. You can access the Idleglen OHV Area from here where you'll find a ton of ATV, dirt bike and snowmobile trails. 
    If you want more of a challenge, try Gravel and Little Gravel Mountain trails nearby.\"\n - onX Offroad")

Area.create(sport_id: dirt_biking.id, area_name: "The Gulches", difficulty_level: "Intermediate/Expert", popularity_rating: 3.7, 
    description: "\"Hackett Gulch, Longwater Gulch and Metberry Gulch are the three most popular extreme trails in the Pikes Peak area. 
    Each offers something a little different, and you can spend all weekend playing and testing your skills and those of your rig. Weekends can get crowded. 
    The trail's official end is at the Teller County Line just before the Platte River. Resist the urge to cross.\"\n - onX Offroad")

Area.create(sport_id: dirt_biking.id, area_name: "China Wall", difficulty_level: "Intermediate/Expert", popularity_rating: 4.9, 
    description: "\"This is a popular trail, especially on weekends. The camping area along Tarryall Creek at the end of the trail. The creek is a great for fishing. Trail is closed from January 1 to June 15.\"\n - onX Offroad")

Area.create(sport_id: dirt_biking.id, area_name: "Pickle Gultch" , difficulty_level: "Expert" , popularity_rating: 4.2, 
    description: "\"This secluded trail is surrounded by private property. Bring a GPS and use directions so you don't get lost. 
    This is a fun area for unlicensed vehicles, and is open all year. For a longer adventure, take this trail with Moon Gulch.\"\n - onX Offroad")

Area.create(sport_id: dirt_biking.id, area_name: "Moon Gultch", difficulty_level: "Intermediate/Expert" , popularity_rating: 4.1, 
    description: "\"This is a secluded trail that loops over to Dakota Hill. There is a quick, easy side trip to a old shaft house that's in great condition. 
    It can be confusing to navigate the unmarked roads, so you'll want to follow directions carefully. Unlicensed vehicles will have a great time on this trail, and parking is available along Moon Gulch and at the south end of the trail. 
    Open all year.\"\n - onX Offroad")

Area.create(sport_id: dirt_biking.id, area_name: "Caribou 4WD Route", difficulty_level: "Beginner to Intermediate", popularity_rating: 3.9, 
    description: "\"This trail borders Indian Peaks Wilderness and offers fun terrain as it passes by the old Caribou Townsite. You will get a beautiful view of Eldora Ski area. There is camping available, but only in designated sites. 
    Don't leave the trail to go across the meadows. There is a $1,000 fine if you do. Unlicensed vehicles are permitted and can stage at the large parking area at Carabou Townsite. Open June 15 to November 30.\"\n - onX Offroad")

Area.create(sport_id: dirt_biking.id, area_name: "Switzerland North", difficulty_level: "Expert", popularity_rating: 4.3, 
    description: "\"This trail is basically the more difficult portion of The Switzerland Trail. The easier section of the trail basically dead ends, at which point you take a left up a very steep, very rocky hill. 
    This part of the route offers an obstacle called Cliffhanger 2.0. This can be bypassed. If you can get there, the camping at the top is unrivaled. There are parking areas on both ends of the trail. It is open all year.\"\n - onX Offroad")

Area.create(sport_id: dirt_biking.id, area_name: "Switzerland Trail", difficulty_level: "Beginner", popularity_rating: 4.2, 
    description: "\"It is amazing to consider what it must have been like to be on a train winding down the steep terrain on this trail. 
    The scenery is fantastic, especially in the fall. If you want a longer adventure, continue north. Trail is open all year.\"\n - onX Offroad") 

binding.pry
0