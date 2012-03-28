#!/bin/bash

PROJECT_DIR=/vagrant

cd $PROJECT_DIR

if [[ -e Gemfile ]]; then
    bundle install
fi

if [[ ! -e  config/unicorn-vagrant.rb ]]; then
    cp config/unicorn.rb.dist config/unicorn-vagrant.rb
fi

if [[ ! -e  config/database.yml ]]; then
    cp config/database.yml.dist config/database.yml
    echo "Importing sample data in the development db..."
    mysql -udsy -pdsy dsy_development < db/dump_dsy_development.sql
    echo "Done."
    echo "Visit http://localhost:3000 and have fun!"
fi
