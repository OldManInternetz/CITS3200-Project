CITS3200-Project
================
# UWA Plant Guide #

Please, check out our application by browsing to our homepage:

http://uwaplantguide.alva.uwa.edu.au:3000

A visually appealing database listing a variety of plants native to Perth; more specifically UWA.

# Who are we? #

We're a bunch of UWA Computer Science students making this app for our CITS3200 Project in Semester 2, 2014.

Alphabetically, Group K is:

	* Jason Chao - 21397806
	* Emma Hunt - 21334201
	* Duncan Lissiman - 20938989
	* Michael Stewart - 20947715
	* James Szklarz - 20505774
	* Chengy Wong - 20848476

Our client, Associate Professor Catharina Sack can be contacted at tinka.sack@uwa.edu.au.

Please send us your feedback :)

If you find any bugs or would like to see us add some more features, please email us at [our-student-number]@student.uwa.edu.au, or our client, Tinka.

# Directory Structure #

./old_html contains the html, css, js etc from the initial prototypes. 

./plantsuwa is the rails application. This follows a standard Ruby on Rails directory structure, outlined breifly below.

app/			Contains the controllers, models, views, helpers, mailers and assets for the application. 
bin/			Contains the rails script that starts the app.
config/			Configure the application's routes, database, and more. 
config.ru		Rack configuration for Rack based servers used to start the application.
db/				Contains the current database schema, as well as the database migrations.
Gemfile
Gemfile.lock	These files specify what gem dependencies are needed for the Rails application. 
lib/			Extended modules for the application.
log/			Application log files.
public/			The only folder seen by the world as-is. Contains static files and compiled assets.
Rakefile		This file locates and loads tasks that can be run from the command line. 
test/			Unit tests, fixtures, and other test apparatus. 
tmp/			Temporary files (like cache, pid, and session files).
vendor/			A place for all third-party code. In a typical Rails application this includes vendored gems.


