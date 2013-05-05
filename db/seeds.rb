# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create([
    {:name => 'Rayados', :twitter_handle => 'RayadosCom'},
    {:name => 'Tigres', :twitter_handle => 'TigresOficial'},
    {:name => 'Pumas', :twitter_handle => 'ClubUniversidad'},
    {:name => 'Real Madrid', :twitter_handle => 'realmadrid'}
])