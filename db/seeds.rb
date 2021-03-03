# frozen_string_literal: true

# Comedian.all.map { |comedian| comedian.id }
# Comedian.all.map { |comedian| comedian.name }
# Review.where(comedian_id: 1).map { |review| review.comment }
# Review.find_by(comedian_id: 10).comedian.name

# Super cool!
# Suberb :D
# <3 <3
# Fucking hippie
# Not your best comedian.
# BEST COMEDIAN EVER YALL <3 <3 *^_^*

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'

puts 'Destroying all looney users'
puts 'Destroying associated reviews, bookings and messages as well'
User.destroy_all

user_agency = User.create(email: 'drheinzdooferschmitz@email.com', password: '111111', first_name: 'Dr. Heinz',
                          last_name: 'Dooferschmitz', role: 'Comedy Agency', nickname: 'iloveperry')
user_headhunter = User.create(email: 'margaridatoureiro@gmail.com', password: '111111', first_name: 'Margarida',
                              last_name: 'Toureiro', role: 'Headhunter', nickname: 'margaridatoureiro')
puts 'Created the 2 mastermind users'

puts 'Destroying all humourless nutjobs'
Comedian.destroy_all

lip = Comedian.create(name: 'Lip Gallagher', age: 25, content: 'I think the answer to that question,
                      like the answer to most questions, is fuck you',
                      address: '2119 S Homan Ave, Chicago IL', user_id: user_agency.id)
mickey = Comedian.create(name: 'Mickey Milkovich', age: 26, content: "Well this ain't Macy's, bitch,
                        you ain't window shopping", address: '2119 S Homan Ave, Chicago IL', user_id: user_agency.id)
raven = Comedian.create(name: 'Raven Baxter', age: 16, content: "It is the unknown we fear when we look upon death and
                        darkness, nothing more. YUP THAT'S ME",
                        address: '461 Ashbury Street San Francisco, CA 94117', user_id: user_agency.id)
shane = Comedian.create(name: 'Shane Dawson', age: 31, content: Faker::Movies::HarryPotter.quote,
                        address: 'Los Angeles, California', user_id: user_agency.id)
Comedian.create(name: 'Joe Exotic (aka "Tiger King")', age: 57, content: "Carole Baskin, killed her husband, wacked him,
                can't convince me that it didn't happen, fed him to tigers they snackin, what's happenin? CAROLE
                BASKIN!", address: 'Wynnewood, Oklahoma', user_id: user_agency.id)
Comedian.create(name: 'Ellen Degeneres', age: 42, content: "I have a rule: if the temperature is less than my age,
                I don't get out of bed", address: Faker::Address.street_address, user_id: user_agency.id)
Comedian.create(name: 'Mike Wazowski', age: 21, content: "I know, I'm so romantic. Sometimes
              I think I should marry myself", address: Faker::Address.street_address, user_id: user_agency.id)
Comedian.create(name: 'Ricky Sanchez', age: 65, content: 'Roses are red, love is fake, weddings are basically
                funerals with cake', address: Faker::Address.street_address, user_id: user_agency.id)
7.times do
  Comedian.create(name: Faker::FunnyName.name, age: rand(18..79), content: Faker::Movies::HarryPotter.quote,
                  address: Faker::Address.street_address, user_id: user_agency.id)
end
puts 'Shamelessly invoking some memorable jokers who are NOT prone to murder, thank you very much'

Review.create(rating: 4.0, comment: "u're a prick phillip gallagher but you sure are funny as fuck",
              user_id: user_headhunter.id, comedian_id: lip.id)
Review.create(rating: 5.0, comment: 'i luv this man', user_id: user_headhunter.id, comedian_id: lip.id)
Review.create(rating: 5.0, comment: 'He was super funny!!! 10/10 would recommend for their events, keep going hun :DD',
              user_id: user_headhunter.id, comedian_id: mickey.id)
Review.create(rating: 5.0, comment: "'They're not climbing mount Everest, they're climbing dick', i diED",
              user_id: user_headhunter.id, comedian_id: mickey.id)
Review.create(rating: 5.0, comment: 'SHE IS THE FUNNIEST GIRL EVER, GO AND HIRE THIS GORGEOUS PIECE OF ASS',
              user_id: user_headhunter.id, comedian_id: raven.id)
Review.create(rating: 4.0, comment: "OH SNAP! (yup, that's Raven ;DDD)",
              user_id: user_headhunter.id, comedian_id: raven.id)
Review.create(rating: 4.5, comment: 'HE IS HILARIOUS YALL !!! CONSPIRACY THEORIES MUCH??',
              user_id: user_headhunter.id, comedian_id: shane.id)
Review.create(rating: 4.0, comment: 'AWESOMEEE',
              user_id: user_headhunter.id, comedian_id: shane.id)
puts 'Created the very accurate and detailed fan reviews of our jokers'

puts 'Destroying our hilarious chatroom'
Chatroom.destroy_all

Chatroom.create(name: 'general')
puts 'General chatroom created'
