from ubuntu
run apt-get update -y
run apt-get install nodejs -y
run apt-get install postgresql -y
run apt-get install libsqlite3-dev -y
run apt-get install sqlite3 -y
run apt-get install ruby -y
#dependency nokogiri for rails
run apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-devy -y
run gem install rails -y
run mkdir /home/web
workdir /home/web


