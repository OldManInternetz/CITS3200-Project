CITS3200-Project
================
# UWA Plant Guide #

See the app in production at: http://uwaplantguide.alva.uwa.edu.au:3000


# Installation Instructions #

If 'git' is not installed on your machine, you must download it. [You can download git here](http://git-scm.com/downloads).

In order to clone this repository, open up a folder in your Terminal and type:

    $ git clone https://github.com/OldManInternetz/CITS3200-Project.git

old_html contains the html, css, js etc from the Prototypes. Plantsuwa is the rails application.

You'll probably need to install ImageMagick, as it is a dependency for paperclip (a Gem used in the project):
[www.imagemagick.org](http://www.imagemagick.org/)

## Setting up the application ##

Before you do anything, you will need to run bundle install:

    $ bundle install

This will install all of the relevant gems (plugins) that the appplication uses.

You may run into issues with the 'Nokogiri' gem. Run the commands that appear if Nokogiri says it cannot be installed properly via bundle install.

Before running the server locally for the first time, you'll need to seed all the data using the following:

    $ rake db:migrate
    $ rake db:seed

## Running the server ##

You can run the server with:

    $ rails server

Navigate to [localhost:3000](http://localhost:3000) in your browser to access it.


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
    
You can now access the server from http://uwaplantguide.alva.uwa.edu.au:3000/ (port to be changed)
    
To quit the server:

    $ kill -9 $(cat tmp/pids/server.pid)

# Test Users #

It’s *hugely important* to the client that the data be preserved in a *correct* state. Only trusted users or administrators can modify the database. 
While we have incorporated change logs for administrators to see what changes have been made to the database, we ask the marker to please not change the live data. Small edits that are immediately reversed are welcome.

Having said that, there are some 
You can play with these users if you like, or create your own.

| Username	|	Password	|	   Status		|
|===============================================|
| Duncan	|	 DuNcAn		|	Administrator	|
| Michael	|	 MiChAeL	|	Administrator	|
| Trusted	|	 TrUsTeD	| 	Trusted User	|

