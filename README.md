# SimpleApp
Simple Rails App to upload photos

Steps to get Rails up in a linux environment:

sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/rbenv/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.3.1
rbenv global 2.3.1
ruby -v
gem install bundler
git config --global color.ui true
git config --global user.name "Rich Timmer"
git config --global user.email "--------------------"
ssh-keygen -t rsa -b 4096 -C "--------------------"
cat/home/home/.ssh/id_rsa.pub.
cat /home/home/.ssh/id_rsa.pub
ssh -T git@github.com
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
gem install rails -v 4.2.6
rbenv rehash
rails -v


Of course use your own e-mail and user name for git.
Also where it says cat /home/home/.ssh/id_rsa.pub ,  copy that output and add it to git ssh keys.

From here, the most useful website for starting your own gallery is:
http://railsgirls-my.github.io/app/

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


