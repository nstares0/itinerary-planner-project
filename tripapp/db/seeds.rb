require 'date'

User.destroy_all
Itinerary.destroy_all
Destination.destroy_all
Review.destroy_all
Companion.destroy_all
# UsersItinerariesAttraction.destroy_all


u1  = User.create(:first_name => "John", :last_name => "Goodman", :email => "john@b.com", :password => "asdf")
u2  = User.create(:first_name => "Steve", :last_name => "Buscemi", :email => "steve@b.com", :password => "asdf")
u3  = User.create(:first_name => "Julianne", :last_name => "Moore", :email => "julianne@b.com", :password => "asdf")
u4  = User.create(:first_name => "Jeff", :last_name => "Bridges", :email => "jeff@b.com", :password => "asdf")
u5  = User.create(:first_name => "Johnny", :last_name => "Turturro", :email => "johnny@b.com", :password => "asdf")
u6  = User.create(:first_name => "Philip", :last_name => "Hoffman", :email => "philip@b.com", :password => "asdf")

i1  = Itinerary.create(:origin => "SFO", :destination => "Capital", :name => "East Coast from 1-1-2090 to 12-31-2090", :departure_date => Time.new(2009,1,1).to_date, :return_date => Time.new(2009,12,31).to_date)
i2  = Itinerary.create(:origin => "OAK", :destination => "Europe", :name => "Visit Granny from 1-1-2000 to 12-31-3000", :departure_date => Time.new(2000,1,1).to_date, :return_date => Time.new(3000,12,31).to_date)
i3  = Itinerary.create(:origin => "SAN", :destination => "South America", :name => "Go home from 1-1-3000 to 1-1-3000", :departure_date => Time.new(3000,1,1).to_date, :return_date => Time.new(3000,1,1).to_date)
i4  = Itinerary.create(:origin => "ORD", :destination => "North America", :name => "My other home from 2-20-2015 to 3-1-2015", :departure_date => Time.new(2015,2,20).to_date, :return_date => Time.new(2015,1,3).to_date)
i5  = Itinerary.create(:origin => "SFO", :destination => "Central America", :name => "Never been from 1-1-2015 to 10-30-2015", :departure_date => Time.new(2015,1,1).to_date, :return_date => Time.new(2015,10,30).to_date)
i6  = Itinerary.create(:origin => "SFO", :destination => "Galapagos", :name => "Yeah, Albatrosses", :departure_date => Time.new(2900,1,1).to_date, :return_date => Time.new(2900,12,31).to_date)


a1  = Destination.create(:name => "California in 2-27-2015", :location => "225 Bush St. SF, CA", :date => Time.new(2015,2,27).to_date)
a2  = Destination.create(:name => "CPLI in 1-27-2015", :location => "28 Hopkins Ct. Berkeley, CA", :date => Time.new(2015,1,27).to_date)
a3  = Destination.create(:name => "White House in 2-27-2016", :location => "1616 Pennsylvania Ave. Washington, DC", :date => Time.new(2016,2,27).to_date)
a4  = Destination.create(:name => "Grove's house in 5-1-2090", :location => "228 Elmwood St. Redwood City, CA", :date => Time.new(2015,1,5).to_date)
a6  = Destination.create(:name => "North Pole in 12-30-2015", :location => "1 North Pole Place North Pole, AL", :date => Time.new(2015,12,30).to_date)
a7  = Destination.create(:name => "Galapagos in 2-27-2015", :location => "Archepelego", :date => Time.new(2015,2,27).to_date, :itinerary_id => 3)
a8  = Destination.create(:name => "Nick's house in 1-27-2015", :location => "28 Hopkins Ct. Berkeley, CA", :date => Time.new(2015,1,27).to_date)
a9  = Destination.create(:name => "White House in 2-27-2016", :location => "1616 Pennsylvania Ave. Washington, DC", :date => Time.new(2016,2,27).to_date)
a10 = Destination.create(:name => "Sue's house in 1-1-2020", :location => "228 Elmwood St. Redwood City, CA", :date => Time.new(2020,1,1).to_date)
a12 = Destination.create(:name => "Alex's house in 1-1-2014", :location => "I don't know.", :date => Time.new(2014,1,1).to_date)
a13 = Destination.create(:name => "Tim's' House in 1-1-2015", :location => "I don't know.", :date => Time.new(2015,1,1).to_date)
a14 = Destination.create(:name => "Myla's house in 1-1-2016", :location => "I don't know.", :date => Time.new(2016,1,1).to_date)

c1  = Companion.create(:first_name => "John", :last_name => "Goodman", :email => "john@b.com")
c2  = Companion.create(:first_name => "Steve", :last_name => "Buscemi", :email => "steve@b.com")
c3  = Companion.create(:first_name => "Julianne", :last_name => "Moore", :email => "julianne@b.com")
c4  = Companion.create(:first_name => "Jeff", :last_name => "Bridges", :email => "jeff@b.com")
c5  = Companion.create(:first_name => "Johnny", :last_name => "Turturro", :email => "johnny@b.com")
c6  = Companion.create(:first_name => "Philip", :last_name => "Hoffman", :email => "philip@b.com")
c7  = Companion.create(:first_name => "Johnathan", :last_name => "Good", :email => "johne@b.com")
c12  = Companion.create(:first_name => "Steven", :last_name => "Busce", :email => "stevee@b.com")
c8  = Companion.create(:first_name => "Julian", :last_name => "Moorene", :email => "juliannee@b.com")
c9  = Companion.create(:first_name => "Jefferson", :last_name => "Bridgeson", :email => "jeffe@b.com")
c10  = Companion.create(:first_name => "John", :last_name => "Turt", :email => "johnne@b.com")
c11 = Companion.create(:first_name => "Phil", :last_name => "Hoff", :email => "phil@b.com")

r1  = Review.create(:content => "Yadda Yadda yaddah Loreum Ipsum Loreum Ipsum Yadda Yadda yaddah Loreum  Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")
r2  = Review.create(:content => "Blah Blah Yipee Yo Blah Blah  Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo ")
r3  = Review.create(:content => "Blah Blah Yipee Yo Blah Blah  Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo ")
r4  = Review.create(:content => "Blah Blah Yipee Yo Blah Blah  Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo Blah Blah Yipee Yo ")
r5  = Review.create(:content => "Now is the time for all good man and women to go to this attraction Ipsum")
r6  = Review.create(:content => "Now is the time for all good man and women to go to this attraction Ipsum")
r7  = Review.create(:content => "Now is the time for all good man and women to go to this attraction Ipsum")
r8  = Review.create(:content => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda  Yadda Yadda yaddah Loreum Ipsum")

# itinerary1.users << user1
# itinerary2.users << user1
# itinerary3.users << user2
# itinerary4.users << user3
# itinerary5.users << user4
# itinerary6.users << user4
# itinerary7.users << user5
# itinerary1.users << user2
# itinerary2.users << user3
# itinerary3.users << user4
# itinerary4.users << user5
# itinerary5.users << user6
# itinerary6.users << user7
# itinerary7.users << user8
# itinerary1.users << user9
# itinerary2.users << user10
# itinerary3.users << user11
# itinerary4.users << user12
# itinerary5.users << user13
# itinerary6.users << user14
# itinerary7.users << user15

# itinerary1.attractions << attraction4
# itinerary1.attractions << attraction17
# itinerary2.attractions << attraction1
# itinerary2.attractions << attraction2
# itinerary2.attractions << attraction3
# itinerary2.attractions << attraction4
# itinerary3.attractions << attraction18
# itinerary4.attractions << attraction7
# itinerary5.attractions << attraction7

# attraction1.reviews << review4
# attraction2.reviews << review3
# attraction3.reviews << review2

# itinerary1.reviews << review1
# itinerary2.reviews << review6
# itinerary3.reviews << review5
