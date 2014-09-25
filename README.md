CITS3200-Project
================

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

### Branching ###

If you're going to work on something, it might be good to create a new branch.

    $ git checkout -b <name of branch>
    
This will help us all work in parallel.

### More information ###

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


# Changing the colour scheme #

To change the colour scheme, you need to do the following:

    - Change 'custom_black.css' to 'custom_white.css' in plantsuwa/app/assets/stylesheets/application.css
    - Change 'admin-pages_white.css' to 'admin-pages_black' in plantsuwa/app/views/layouts/admin_layout.html.erb

Save those files and it should be done. To swap back, just reverse 'white' and 'black'.
