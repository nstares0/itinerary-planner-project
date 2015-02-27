Attractions.destroy_all
Itineraries.destroy_all
Reviews.destroy_all
User_permissions.destroy_all
User.destroy_all

user1 = User.create(:first_name => "John", :last_name => "Goodman", :email => "John@b.com", :password => "asdf")
user2 = User.create(:first_name => "Steve", :last_name => "Buscemi", :email => "Steve@b.com", :password => "asdf")
user3 = User.create(:first_name => "Julianne", :last_name => "Moore", :email => "Julianne@b.com", :password => "asdf")
user4 = User.create(:first_name => "Jeff", :last_name => "Bridges", :email => "Jeff@b.com", :password => "asdf")
user5 = User.create(:first_name => "Johnny", :last_name => "Turturro", :email => "Johnny@b.com", :password => "asdf")
user6 = User.create(:first_name => "Philip", :last_name => "Hoffman", :email => "Philip@b.com", :password => "asdf")
user7 = User.create(:first_name => "Jake", :last_name => "Seymour", :email => "Jake@b.com", :password => "asdf")
user8 = User.create(:first_name => "Phyllis", :last_name => "Diller", :email => "Phyllis@b.com", :password => "asdf")
user9 = User.create(:first_name => "Tim", :last_name => "Licata", :email => "Tim@b.com", :password => "asdf")
user10 = User.create(:first_name => "Elie", :last_name => "Schopik", :email => "Elie@b.com", :password => "asdf")
user11 = User.create(:first_name => "Alex", :last_name => "Notov", :email => "Alex@b.com", :password => "asdf")

permission1 = User_permission.create(:permission_name => "Admin")
permission2 = User_permission.create(:permission_name => "Editor")

attractions1 = Attraction.create(:location => "225 Bush St. SF, CA", :name => "California", :attraction_date => 2015/02/27)
attractions2 = Attraction.create(:location => "28 Hopkins Ct. Berkeley, CA", :name => "CPLI", :attraction_date => 2015/01/27)
attractions3 = Attraction.create(:location => "1616 Pennsylvania Ave. Washington, DC", :name => "White House", :attraction_date => 2016/02/27)
attractions4 = Attraction.create(:location => "228 Elmwood St. Redwood City, CA", :name => "Grove's house", :attraction_date => 2020/01/01)
attractions5 = Attraction.create(:location => "123 Anytown Ave. Anytown, OR", :name => "Fantasy Land", :attraction_date => 2019/09/9)
attractions6 = Attraction.create(:location => "1 North Pole Place North Pole, AL", :name => "North Pole", :attraction_date => 2015/12/30)

itinerary1 = Itinerary.create(:origin => "SFO", :destination => "Capital", :name => "East Coast", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary2 = Itinerary.create(:origin => "OAK", :destination => "Europe", :name => "Visit Granny", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary3 = Itinerary.create(:origin => "SAN", :destination => "South America", :name => "Go home", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary4 = Itinerary.create(:origin => "ORD", :destination => "North America", :name => "My other home", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary5 = Itinerary.create(:origin => "SFO", :destination => "Central America", :name => "Never been here", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary6 = Itinerary.create(:origin => "SFO", :destination => "Galapagos", :name => "Yeah, Albatrosses", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary7 = Itinerary.create(:origin => "SFO", :destination => "Quito", :name => "Start Business", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary8 = Itinerary.create(:origin => "SAN", :destination => "Mexico", :name => "Vacation", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary9 = Itinerary.create(:origin => "OAK", :destination => "Vancouver", :name => "Wedding", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary10 = Itinerary.create(:origin => "OAK", :destination => "Toronto", :name => "Film Festival", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary11 = Itinerary.create(:origin => "OAK", :destination => "Dominican Republic", :name => "Film Festival 2", :departure_date => 2900/01/01, :return_date => 2900/12/31)
itinerary12 = Itinerary.create(:origin => "OAK", :destination => "Germany", :name => "Eat Brats", :departure_date => 2900/01/01, :return_date => 2900/12/31)

review1 = Review.create(:user_id => "1", :title => "Loved it!", :comment => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")
review2 = Review.create(:user_id => "1", :title => "Loved it!", :comment => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")
review3 = Review.create(:user_id => "1", :title => "Loved it!", :comment => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")
review4 = Review.create(:user_id => "1", :title => "Loved it!", :comment => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")
review5 = Review.create(:user_id => "1", :title => "Loved it!", :comment => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")
review6 = Review.create(:user_id => "1", :title => "Loved it!", :comment => "Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum Yadda Yadda yaddah Loreum Ipsum")

itinerary1.reviews << review1
itinerary2.reviews << review6
itinerary3.reviews << review5

attraction4.reviews << review4
attraction5.reviews << review3
attraction6.reviews << review2

magnolia.actors << moore
magnolia.actors << hoffman

fink.actors << goodman
fink.actors << buscemi
fink.actors << turturro
