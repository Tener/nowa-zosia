# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Sponsor.create(:name => "powermedia", :url => "http://powermedia.pl/", :image => "powermedia.png", :visible => true)
Sponsor.create(:name => "naszaklasa", :url => "http://nasza-klasa.pl/", :image => "nk.png", :visible => true)