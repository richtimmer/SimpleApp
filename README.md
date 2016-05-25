# SimpleApp
Simple Rails App to upload photos

Steps to get Rails up in a linux environment:
see setup.bash for instructions on standing up the rails environment, I used a virtual box, and ran the ubuntu server.

Not mentioned in setup.bash,
Of course use your own e-mail and user name for git.
Also where it says cat /home/home/.ssh/id_rsa.pub ,  copy that output and add it to git ssh keys.

From here, the most useful website for starting your own gallery is:
http://railsgirls-my.github.io/app/

I started with the command:
rails new simpleApp
then followed the directions on the website.

I made several false starts before arriving at that site.
Getting the route correct is important, without it the page will not render at all.
In addition to those instructions,

in  simpleApp\Gemfile add 
gem 'carrierwave'
in order to upload files.

skip the step:
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
It caused grief for reasons I don't yet understand, ( that's what you get for using code you don't understand ).

I made several false starts in db\migrate, from there I learned that when you run a sql command
running rake db:migrate will create the databases defined in db/migrate
If this data is already in existence, the script will throw an error.  So delete the sql file, and re run the command.
If you wanted to preserve your data, it looks like self.down in ActiveRecord::Migration might help you do that.

I looked at these sites:
Reference these sites:

https://github.com/richtimmer/forever-challenge

http://stackoverflow.com/questions/10602662/simple-photo-gallery-gem

http://balderapp.com/

the balder app has a example of albums, as well as authentication. A good next step is to understand the interaction it has between photos and albums.

In this file:
app\models\photo.rb
 code was added to allow uploading the images using carrierwave, mentioned earlier.
 
In app\controllers\photos_controller.rb
the control of the photos occurs, here.  This is where some of the interaction between an album and a photo would occur, filtering out the photos to be rendered by views\photos\show.html.erb using a a primary key from the photo database, and that same piece of data represented as a foreign key in the albums database.  This should be done in the index method of photos_controller.rb. 







