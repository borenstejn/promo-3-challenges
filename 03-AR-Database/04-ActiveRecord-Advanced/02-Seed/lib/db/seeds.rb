require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts 'Seeding database...'

user1 = User.create(name: Faker::Name.name, email: Faker::Internet.email)
user2 = User.create(name: Faker::Name.name, email: Faker::Internet.email)
user3 = User.create(name: Faker::Name.name, email: Faker::Internet.email)
user4 = User.create(name: Faker::Name.name, email: Faker::Internet.email)


url = "https://news.ycombinator.com/"
doc = Nokogiri::HTML(open(url))
#puts doc.at_css("title").text

# TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users
