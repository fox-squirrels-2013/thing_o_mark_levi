require 'sinatra'
require 'active_record'
require 'rake'
require './thing-o.rb'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb sinatra_skeleton_dev`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb sinatra_skeleton_dev`
  end
end
