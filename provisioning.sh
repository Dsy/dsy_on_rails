#!/bin/bash

PROJECT_DIR=/vagrant

cd $PROJECT_DIR

if [[ -e Gemfile ]]; then
    bundle install
fi

if [[ ! -e  config/unicorn.rb ]]; then
    cp config/unicorn.rb.dist config/unicorn.rb
fi

if [[ ! -e  config/database.yml ]]; then
    cp config/database.yml.dist config/database.yml
    echo "Loading db schema..."
    rake db:schema:load
    echo "Done."
    echo "Loading fixtures..."
    rake db:fixtures:load
    echo "Done."
    echo "Visit http://localhost:3000 and have fun!"
fi
