# Schema for “Tripit” Itineraries Lab
#### Christian, Sue, Nick S. are team “Best team name ever”

-------------------------------------------
### Tables: `users`, `itineraries`, `attractions`, `reviews`, `user permissions <-maybe`
##### Questions
Are we going with the user permissions? I thought we decided against it.

-------------------------------------------
### -- users --
(By virtue of a user belonging to an itinerary or attraction, they then are a “companion” )

##### Table relationships
- has_many :user_itineraries, dependent: :destroy
- has_many :itineraries, through: :user_itineraries
		- requires another table
		class UserItineraries < ActiveRecord::Base
		  belongs_to :users
		  belongs_to :itineraries
		end

- has_many :user_attractions
- has_many :attrations, through: :user_attractions
		- requires another table
		class UserAttractions < ActiveRecord::Base
		  belongs_to :users
		  belongs_to :attractions
		end

- has_many :reviews, as: :reviewable

- belongs_to :user_permissions

##### Validations
- validates __:first_name__, __:last_name__, __:email__, __:password__ presence: true
- validates __:email__ is unique

##### Columns
- __id__			: `integer` <==Primary key
- __first_name__	: `string`
- __last_name__		: `string`
- __email__			: `string`
- __password__		: `string`

##### Questions
- I think password should be required. I'm reading the lab instructions and I feel it's necessary.

- We didn’t talk about this but, I think email should be required. If another user, say an Admin of an Itinerary, invites Joe Smith to the itinerary, as you said Nick, there could be misspelling or a nick name. So an email should be the relied field for the user’s account.

- For a little app flair, any user should be able to change their password.

-------------------------------------------
### -- itineraries --
##### Table relationships
- has_many :itinerary_users
- has_many :users, through: :user_itineraries   <--this is for the users attending this itinerary
	  - OR maybe it needs - 
	  has_many :users, as: :joinable
	  ##### If this is used, then another table
	  ItineraryUsers < ActiveRecord::Base
		belongs_to :users
	  end


- has_many :attractions, dependent: :destroy

- has_many :reviews, as: :reviewable

- belongs_to :users   <--this is the creator of the itinerary

##### Validations
- validates __:origin__, __:destination__, __:name__, presence: true

##### Columns
- __id__			: `integer` <==Primary key.
- __origin__		: `string`
- __destination__	: `string`
- __name__			: `string`
- __departure_date__: `date`
- __return_date__	: `date`

-------------------------------------------
### -- attractions --
(what the lab docs call Destinations)
##### Table relationships
- has_many :users, as: :joinable   <--this is for the users attending this attraction
	  - OR maybe it needs - 
	  has_many :user_attractions
	  has_many :users, through: :user_attractions

- has_many :reviews, as: :reviewable

- belongs_to :itineraries

##### Validations
- validates __:location__, __:name__, presence: true
- validates __:date__ that it is {between: itineraries.departure_date..itineraries.return_date}

##### Columns
- __id__		: `integer` <==Primary key.
- __location__	: `string`  <==Address.
- __name__		: `string`  <==Location name Ex. Eifel Tower, Bob's House, US Capital...
- __attraction_date__		: `date`

-------------------------------------------
### -- reviews --
##### Table relationships
- belongs_to :attractions, :itineraries, :users, polymorphic: true

##### Validations
- validates __:user_id__, __:comment__, presence: true

##### Columns
- __id__ : `integer <==Primary key.
- __user_id__		: `integer` <==This is who created the review.
- __title__		: `string`  <==Title of the review.
- __comment__		: `text`  <==This is the review.

##### Questions
Nick and Sue, I think the instructions about reviews means reviews can be left about other users. Like ""Sue is a great travel partner in XYZ country since she knows that language."

-------------------------------------------
### -- user_permissions --
##### To be used only if we are implementing "Admin" and "Editor" capabilities.
If we're not doing "Admin" and "Editor", then there is no need for this table. __This one is hard to figure out__ since I have to think of it in terms of Rails. I didn't realize at first how different it could be because of that. I can describe it in good ol' SQL. I'm having trouble being confident about setting it up in Rails. I'm beginning to think we drop this idea.

##### Table relationships
- belongs_to :attractions, :itineraries, :users, polymorphic: true

##### Columns
- __id__ : `integer <==Primary key.
- __user_id__		: `integer` __(validate not nil)__  <==This is who has this permission.
- __permission_name__		: `string` __(validate not nil)__  <==This is either "Admin" or "Editor". If neither admin or editor are declared for a user on an itinerary or attraction, then that user is a companion.

  
(nick) this is what i worked out for the relationships. there is some overlap with christian but i am putting it in here for reference.

user.rb  has_many :users_itineraries, dependent: :destroy
has_many :itineraries, through: :users_itineraries

has_many :users_attractions, dependent: :destroy
has_many :attractions, through: :attractions_users 

has_many :reviews
——————————————————————————————————
itinerary.rb has_many :users_itineraries, dependent:destroy
has_many :users, through: users_itineraries

has_many :itineraries_attractions, dependent :destroy
has_many :attractions, through: :itineraries_attractions

has_many :reviews, as: :reviewable
——————————————————————————————————
attraction.rb
has_many :users_attractions, dependent: :destroy
has many :users, through: attractions_users

has_many :itineraries_attractions, dependent :destroy
has_many :itineraries, through: :itineraries_attractions 
has_many :reviews, as: :reviewable
——————————————————————————————————
review.rb 
belongs_to :reviewable, polymorphic: true
belongs_to :user
——————————————————————————————————
users_itineraries.rb
belongs_to :user
belongs_to :movie
——————————————————————————————————
attractions_users.rb
belongs_to :attraction
belongs_to :user
——————————————————————————————————
itineraries_attractions.rb
belongs_to :itinerary
belongs_to :attraction