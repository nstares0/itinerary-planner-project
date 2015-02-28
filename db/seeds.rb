require 'date'

User.destroy_all
Itinerary.destroy_all
Attraction.destroy_all
Review.destroy_all
UsersItinerariesAttraction.destroy_all

user1  = User.create(:first_name => "John", :last_name => "Goodman", :email => "john@b.com", :password => "asdf")
user2  = User.create(:first_name => "Steve", :last_name => "Buscemi", :email => "steve@b.com", :password => "asdf")
user3  = User.create(:first_name => "Julianne", :last_name => "Moore", :email => "julianne@b.com", :password => "asdf")
user4  = User.create(:first_name => "Jeff", :last_name => "Bridges", :email => "jeff@b.com", :password => "asdf")
user5  = User.create(:first_name => "Johnny", :last_name => "Turturro", :email => "johnny@b.com", :password => "asdf")
user6  = User.create(:first_name => "Philip", :last_name => "Hoffman", :email => "philip@b.com", :password => "asdf")
user7  = User.create(:first_name => "Jake", :last_name => "Seymour", :email => "jake@b.com", :password => "asdf")
user8  = User.create(:first_name => "Phyllis", :last_name => "Diller", :email => "phyllis@b.com", :password => "asdf")
user9  = User.create(:first_name => "Tim", :last_name => "Licata", :email => "tim@b.com", :password => "asdf")
user10 = User.create(:first_name => "Elie", :last_name => "Schopik", :email => "elie@b.com", :password => "asdf")
user11 = User.create(:first_name => "Alex", :last_name => "Notov", :email => "alex@b.com", :password => "asdf")
user12 = User.create(:first_name => "Sue", :last_name => "Talks", :email => "sue@b.com", :password => "asdf")
user13 = User.create(:first_name => "Chris", :last_name => "Chandler", :email => "chris@b.com", :password => "asdf")
user14 = User.create(:first_name => "Nick", :last_name => "Stares", :email => "nick@b.com", :password => "asdf")
user15 = User.create(:first_name => "Collin", :last_name => "Clap", :email => "collin@b.com", :password => "asdf")
user16 = User.create(:first_name => "Joel", :last_name => "Duck", :email => "joel@b.com", :password => "asdf")
user17 = User.create(:first_name => "Will", :last_name => "Beer", :email => "will@b.com", :password => "asdf")
user18 = User.create(:first_name => "Joe", :last_name => "Bike", :email => "joe@b.com", :password => "asdf")
user19 = User.create(:first_name => "Myla", :last_name => "Rings", :email => "myla@b.com", :password => "asdf")
user21 = User.create(:first_name => "Peter", :last_name => "Pipper", :email => "peter@b.com", :password => "asdf")
user22 = User.create(:first_name => "Ali", :last_name => "Alum", :email => "ali@b.com", :password => "asdf")
user23 = User.create(:first_name => "Sam", :last_name => "FB", :email => "sam@b.com", :password => "asdf")
user24 = User.create(:first_name => "Obama", :last_name => "Prez", :email => "obama@b.com", :password => "asdf")
user25 = User.create(:first_name => "Chabela", :last_name => "Dog", :email => "chabela@b.com", :password => "asdf")

itinerary1  = Itinerary.create(:origin => "SFO", :destination => "Capital", :name => "East Coast from 1-1-2090 to 12-31-2090", :start_date => Time.new(2009,1,1).to_date, :end_date => Time.new(2009,12,31).to_date)
itinerary2  = Itinerary.create(:origin => "OAK", :destination => "Europe", :name => "Visit Granny from 1-1-2000 to 12-31-3000", :start_date => Time.new(2000,1,1).to_date, :end_date => Time.new(3000,12,31).to_date)
itinerary3  = Itinerary.create(:origin => "SAN", :destination => "South America", :name => "Go home from 1-1-3000 to 1-1-3000", :start_date => Time.new(3000,1,1).to_date, :end_date => Time.new(3000,1,1).to_date)
itinerary4  = Itinerary.create(:origin => "ORD", :destination => "North America", :name => "My other home from 2-20-2015 to 3-1-2015", :start_date => Time.new(2015,2,20).to_date, :end_date => Time.new(2015,1,3).to_date)
itinerary5  = Itinerary.create(:origin => "SFO", :destination => "Central America", :name => "Never been from 1-1-2015 to 10-30-2015", :start_date => Time.new(2015,1,1).to_date, :end_date => Time.new(2015,10,30).to_date)
itinerary6  = Itinerary.create(:origin => "SFO", :destination => "Galapagos", :name => "Yeah, Albatrosses", :start_date => Time.new(2900,1,1).to_date, :end_date => Time.new(2900,12,31).to_date)
itinerary7  = Itinerary.create(:origin => "SFO", :destination => "Quito", :name => "Start Business", :start_date => Time.new(2900,1,1).to_date, :end_date => Time.new(2900,12,31).to_date)
itinerary8  = Itinerary.create(:origin => "SAN", :destination => "Mexico", :name => "Vacation", :start_date => Time.new(2900,1,1).to_date, :end_date => Time.new(2900,12,31).to_date)
itinerary9  = Itinerary.create(:origin => "OAK", :destination => "Vancouver", :name => "Wedding", :start_date => Time.new(2900,1,1).to_date, :end_date => Time.new(2900,12,31).to_date)
itinerary10 = Itinerary.create(:origin => "WAS", :destination => "Toronto", :name => "Film Festival", :start_date => Time.new(2900,1,1).to_date, :end_date => Time.new(2900,12,31).to_date)
itinerary11 = Itinerary.create(:origin => "TXS", :destination => "Dominican Republic", :name => "Film Festival 2", :start_date => Time.new(2900,1,1).to_date, :end_date => Time.new(2900,12,31).to_date)
itinerary12 = Itinerary.create(:origin => "MIA", :destination => "Germany", :name => "Eat Brats", :start_date => Time.new(2900,1,1).to_date, :end_date => Time.new(2900,12,31).to_date)

attractions1  = Attraction.create(:name => "California in 2-27-2015", :location => "225 Bush St. SF, CA", :date => Time.new(2015,2,27).to_date)
attractions2  = Attraction.create(:name => "CPLI in 1-27-2015", :location => "28 Hopkins Ct. Berkeley, CA", :date => Time.new(2015,1,27).to_date)
attractions3  = Attraction.create(:name => "White House in 2-27-2016", :location => "1616 Pennsylvania Ave. Washington, DC", :date => Time.new(2016,2,27).to_date)
attractions4  = Attraction.create(:name => "Grove's house in 5-1-2090", :location => "228 Elmwood St. Redwood City, CA", :date => Time.new(2015,1,5).to_date)
attractions6  = Attraction.create(:name => "North Pole in 12-30-2015", :location => "1 North Pole Place North Pole, AL", :date => Time.new(2015,12,30).to_date)
attractions7  = Attraction.create(:name => "Galapagos in 2-27-2015", :location => "Archepelego", :date => Time.new(2015,2,27).to_date)
attractions8  = Attraction.create(:name => "Nick's house in 1-27-2015", :location => "28 Hopkins Ct. Berkeley, CA", :date => Time.new(2015,1,27).to_date)
attractions9  = Attraction.create(:name => "White House in 2-27-2016", :location => "1616 Pennsylvania Ave. Washington, DC", :date => Time.new(2016,2,27).to_date)
attractions10 = Attraction.create(:name => "Sue's house in 1-1-2020", :location => "228 Elmwood St. Redwood City, CA", :date => Time.new(2020,1,1).to_date)
attractions12 = Attraction.create(:name => "Alex's house in 1-1-2014", :location => "I don't know.", :date => Time.new(2014,1,1).to_date)
attractions13 = Attraction.create(:name => "Tim's' House in 1-1-2015", :location => "I don't know.", :date => Time.new(2015,1,1).to_date)
attractions14 = Attraction.create(:name => "Myla's house in 1-1-2016", :location => "I don't know.", :date => Time.new(2016,1,1).to_date)
attractions15 = Attraction.create(:name => "Peter's house in 1-1-2017", :location => "I don't know.", :date => Time.new(2017,1,1).to_date)
attractions16 = Attraction.create(:name => "Ali's house in 1-1-2018", :location => "I don't know.", :date => Time.new(2018,1,1).to_date)
attractions17 = Attraction.create(:name => "Deborah's house in 6-1-2090", :location => "228 Elmwood St. Redwood City, CA", :date => Time.new(2090,1,6).to_date)
attractions18 = Attraction.create(:name => "Austrailia 1-1-3000", :location => "228 Elmwood St. Redwood City, CA", :date => Time.new(3000,1,1).to_date)

review1  = Review.create(:user_id => "1", :comment => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")
review2  = Review.create(:user_id => "1", :comment => "Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo ")
review3  = Review.create(:user_id => "1", :comment => "Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo ")
review4  = Review.create(:user_id => "2", :comment => "Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo ")
review5  = Review.create(:user_id => "4", :comment => "Now is the time for all good man and women to go to this attraction Ipsum")
review6  = Review.create(:user_id => "4", :comment => "Now is the time for all good man and women to go to this attraction Ipsum")
review7  = Review.create(:user_id => "5", :comment => "Now is the time for all good man and women to go to this attraction Ipsum")
review8  = Review.create(:user_id => "6", :comment => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")
review9  = Review.create(:user_id => "7", :comment => "Boogie woogie mish mash")
review10 = Review.create(:user_id => "8", :comment => "Boogie woogie mish mash")
review11 = Review.create(:user_id => "9", :comment => "Boogie woogie mish mash")
review12 = Review.create(:user_id => "10", :comment => "Boogie woogie mish mash")

itinerary1.users << user1
itinerary2.users << user1
itinerary3.users << user2
itinerary4.users << user3
itinerary5.users << user4
itinerary6.users << user4
itinerary7.users << user5
itinerary1.users << user2
itinerary2.users << user3
itinerary3.users << user4
itinerary4.users << user5
itinerary5.users << user6
itinerary6.users << user7
itinerary7.users << user8
itinerary1.users << user9
itinerary2.users << user10
itinerary3.users << user11
itinerary4.users << user12
itinerary5.users << user13
itinerary6.users << user14
itinerary7.users << user15

itinerary1.attractions << attraction4
itinerary1.attractions << attraction17
itinerary2.attractions << attraction1
itinerary2.attractions << attraction2
itinerary2.attractions << attraction3
itinerary2.attractions << attraction4
itinerary3.attractions << attraction18
itinerary4.attractions << attraction7
itinerary5.attractions << attraction7

attraction1.reviews << review4
attraction2.reviews << review3
attraction3.reviews << review2

itinerary1.reviews << review1
itinerary2.reviews << review6
itinerary3.reviews << review5

