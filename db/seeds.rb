# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create(:name => "Fake user", :roles => [:user])
puts "users created"

Speech.create(:title => "Fake speech", :body => "Fake body", :user_id => user.id, :approved => false, :voices => 0)
Speech.create(:title => "Original speech", :body => "Master told you how you should live", :user_id => user.id, :approved => false, :voices => 0)
puts "speeches created"