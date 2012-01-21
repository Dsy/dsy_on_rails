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
    rake db:schema:load
    rake db:fixtures:load
fi
