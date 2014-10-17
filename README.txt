CITS3200-Project
================
# UWA Plant Guide #
The project that was posed to our group by Assoc. Prof. Tinka Sack was to build a native app for use across all platforms. 
The current in-use system was a "clunky and ugly" app available only on iPhone: a hinderance to the usefulness and accessibility
of the app. The app was used for teaching and browsing from the general public. There existed a web-based database which was not 
routinely updated due to the inaccessible interface. Tinka wanted a more easily editable web-based database to be built. 
After assessing the project and our combined skills, our group made the decision that we were not well equipped to build a native app.
When we approached Tinka with the idea to build a web-app instead, she was enthusiastic. 
The web-app would look and act just like a native app, and would be built specifically for use on phones. It would also, of course, be 
accessible from desktop computers, and the desktop interface would be altered slightly to enable ease of editing the database. The app
would allow users to browse the plant database, search plants by key words and parameters, and add and edit plants (for certain users). 
One of Tinka's requirements was to develop a system that enabled crowd-sourcing data. So as to meet this requirement, a user hierarchy 
was established: Administration, trusted users, regular users, and guests. Only trusted users can add and edit plants, and the administrators 
can monitor their activity. Guest users can browse and search plants. 

Please, check out our application by browsing to our homepage:
http://uwaplantguide.alva.uwa.edu.au (failing that,
http://uwaplantguide.alva.uwa.edu.au:3000)

A visually appealing database listing a variety of plants native to Perth; more specifically UWA.

# Who are we? #

We're a bunch of UWA Computer Science students making this app for our CITS3200 Project in Semester 2, 2014.
Group K was initially a team of 5, whereby Michael and Duncan were assigned the role of coding, with Chenghan
working on documentation, Jason to organise testing and Emma to manage the weekly deliverables and minutes. 
There is a small amount of overlap. We adopted a sixth member to our group, James, halfway through the semester,
and he has been assigned to the coding team as well.

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


