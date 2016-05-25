    1  sudo apt-get update
    2  sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
    3  ls -ltr
    4  ls -ltr /
    5  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    6  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    7  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    8  exec $SHELL
    9  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
   10  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
   11  exec $SHELL
   12  git clone https://github.com/rbenv/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
   13  rbenv install 2.3.1
   14  rbenv global 2.3.1
   15  ruby -v
   16  gem install bundler
   17  git config --global color.ui true
   18  git config --global user.name "Rich Timmer"
   19  git config --global user.email "richtimmer@yahoo.com"
   20  ssh-keygen -t rsa -b 4096 -C "richtimmer@yahoo.com"
   21  cat/home/home/.ssh/id_rsa.pub.
   22  cat /home/home/.ssh/id_rsa.pub
   23  ssh -T git@github.com
   24  curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
   25  sudo apt-get install -y nodejs
   26  gem install rails -v 4.2.6
   27  rbenv rehash
   28  rails -v
   29  history > setup.bash
