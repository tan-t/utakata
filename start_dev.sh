echo "create database utakata_development; create database utakata_test;" > start.sql
mysql -u root < start.sql
bundle install
rake db:migrate
