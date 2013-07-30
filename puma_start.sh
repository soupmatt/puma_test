#!/bin/bash

cd "$( dirname "$0" )"

export JRUBY_OPTS="-J-Djruby.fork.enable=true"
export PUMA_JRUBY_DAEMON_OPTS="-J-server -J-Djruby.fork.enable=true"

exec bundle exec puma -C puma.rb
