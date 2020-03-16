#!/bin/bash

# Compile the assets
bundle exec rails assets:precompile

# Start the server
bundle exec rackup -p 9292 -o 0.0.0.0