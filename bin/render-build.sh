#!/user/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean

#run database migrations and seed data on deploy
bundle exec rails db:migrate
bundle exec rails db:seed