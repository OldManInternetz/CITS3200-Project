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
db/			Contains the current database schema, as well as the database migrations.
Gemfile
Gemfile.lock		These files specify what gem dependencies are needed for the Rails application. 
lib/			Extended modules for the application.
log/			Application log files.
public/			The only folder seen by the world as-is. Contains static files and compiled assets.
Rakefile		This file locates and loads tasks that can be run from the command line. 
test/			Unit tests, fixtures, and other test apparatus. 
tmp/			Temporary files (like cache, pid, and session files).
vendor/			A place for all third-party code. In a typical Rails application this includes vendored gems.

# Running the Server #

You can run the server with:

    $ rails server

Navigate to [localhost:3000](http://localhost:3000) in your browser to access it.


# Working with git #

## Adding files to be committed ##

Once you've done some work, run the command:

    $ git status

This will show you all of the files that you have created, edited, and deleted.

By running the command:

    $ git add .

... Git will know to sync all new and edited files when you run the 'commit' command.

If you have deleted any files, you will need to run:

    $ git add -u

... in order for Git to sync deleted files (it won't do this unless you run this command).

You can then commit your changes using:

    $ git commit -m "here is a message about what I did"

and finally push it to the server:

    $ git push
    
Then hopefully the update will be pushed to the github server and the thing will be updated.

If you are working on things, and you want to make sure you have the most up-to-date version of the files, you can use the command:

    $ git pull
    
to pull the current version of the thing to your computer.

The log files, and tmp files, won't be synced, nor will the development database.

## Branching ##

If you're going to work on something, it might be good to create a new branch.

    $ git checkout -b <name of branch>
    
This will help us all work in parallel.

## More information ##

There's a lot more information here:

https://help.github.com/articles/creating-and-deleting-branches-within-your-repository


# Running the tests using Rspec #

I'm doing the tests with a Gem called "Rspec". You can run them by navigating to the plantsuwa folder and typing: 

    $ rspec spec/.*

This will execute all of the tests within the spec folder, and all subfolders. It will generate a coverage file, which shows how much of the source code is covered by testing. It can be found in the coverage folder.


# Running the application on the ALVA Server #

Navigate to the project directory

    $ cd ~/CITS3200-Project/plantsuwa

Pull the latest from git 

    $ git pull
    
Start the server (indefinitely)

    $ rails s -d
    
You can now access the server from http://alva-nix-002.alva.uwa.edu.au:3000/ (alias to be changed)
    
To quit the server:

    $ kill -9 $(cat tmp/pids/server.pid)
