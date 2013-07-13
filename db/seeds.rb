# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

people = Person.create([{first: 'Alex',    last: 'Smith'}, 
                        {first: 'Bryn',    last: 'Loeffler'},
                        {first: 'Charlie', last: 'Swanson'},
                        {first: 'Lindsay', last: 'MacGillivray'}])

cities = City.create([{name: 'Pittsburgh',            short_name: 'Pittsburg'},            #1
                      {name: 'Louisville',            short_name: 'Louisville'},           #2
                      {name: 'Memphis',               short_name: 'Memphis'},              #3
                      {name: 'New Orleans',           short_name: 'New Orleans'},          #4
                      {name: 'Dallas',                short_name: 'Dallas'},               #5
                      {name: 'Black Mesa State Park', short_name: 'Black Mesa'},           #6
                      {name: 'Denver',                short_name: 'Denver'},               #7
                      {name: 'Arches National Park',  short_name: 'Arches'},               #8
                      {name: 'Grand Canyon',          short_name: 'Grand Canyon'},         #9
                      {name: 'Las Vegas',             short_name: 'Vegas'},                #10
                      {name: 'Laguna Niguel',         short_name: 'Laguna Niguel'},        #11
                      {name: 'Big Sur State Park',    short_name: 'Big Sur'},              #12
                      {name: 'San Francisco',         short_name: 'San Fran'}])            #13

travel_infos = TravelInfo.create([{hours: 6 , minutes: 12, miles: 388},  #1
                                  {hours: 5 , minutes: 40, miles: 384},  #2
                                  {hours: 5 , minutes: 48, miles: 395},  #3
                                  {hours: 8 , minutes: 54, miles: 587},  #4
                                  {hours: 8 , minutes: 50, miles: 506},  #5
                                  {hours: 5 , minutes: 43, miles: 347},  #6
                                  {hours: 5 , minutes: 30, miles: 350},  #7
                                  {hours: 5 , minutes: 45, miles: 333},  #8
                                  {hours: 4 , minutes: 16, miles: 277},  #9
                                  {hours: 4 , minutes: 12, miles: 276},  #10
                                  {hours: 6 , minutes: 23, miles: 348},  #11
                                  {hours: 2 , minutes: 47, miles: 147}]) #12


days = (1..12).map{|i| Day.create(start_city_id:     City.find(i).id,
                                  end_city_id:       City.find(i + 1).id,
                                  travel_info_id: TravelInfo.find(i).id,
                                  date:           Date.new(2013,5,15) + (i -1).days)}


