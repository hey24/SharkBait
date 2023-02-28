puts "Deleting all files"
Booking.destroy_all
Shark.destroy_all
User.destroy_all


puts "Creating users..."
user1 = User.create(first_name: 'John' ,last_name: 'Smith' ,email: 'johnsmith@lewagon.com' ,password: 123456 )
user2 = User.create(first_name: 'Paul' ,last_name: 'Rudd' ,email: 'paulrudd@lewagon.com',password: 123456  )
user3 = User.create(first_name: 'James' ,last_name: 'Hayman' ,email: 'jameshayman@lewagon.com',password: 123456  )
user4 = User.create(first_name: 'Fred' ,last_name: 'Sherman' ,email: 'fredsherman@lewagon.com' ,password: 123456  )
user5 = User.create(first_name: 'William' ,last_name: 'Laporte' ,email: 'williamlaporte@lewagon.com' ,password: 123456  )


puts "Users done!"
puts "Creating sharks"


Shark.create(name: 'Fintastic', age: 60, breed: 'HammerHead Shark', description: ' Due to my breed type (and being a bloodthirsty predator) I am very alert and driven (by blood), and rather clever too, so I could do with an experienced shark lover who has an interest in training.', price: 403,diet: 'Small Sharks', picture_url: 'https://www.surfertoday.com/images/stories/hammerheadsharks.jpg' ,user_id: user1.id)
Shark.create(name: 'Chumley', age: 79, breed: 'Tiger Shark', description: 'Im a cool blue shark who likes to cruise slowly at the surface. I spent most of my life in shark kennels, though through no fault of my own. I enjoy playing fetch and belly scratches.', price: 898 ,diet: 'Sea Lions', picture_url: 'https://www.surfertoday.com/images/stories/tigersharks.jpg' , user_id: user1.id)
Shark.create(name: 'Jawsome', age: 100, breed: 'Bull Shark',description: 'I havent lived in a house before, but my current owner takes me for a ride every day at lunchtime and Im really enjoying it. Due to a difficult childhood, I have anger issues and could do with an experienced shark owner.',  price: 3000 ,diet: 'Stingrays', picture_url: 'https://www.surfertoday.com/images/stories/bullsharks.jpg' ,user_id: user2.id)
Shark.create(name: 'Sharkira', age: 130, breed: 'Oceanic Whitetip Shark', description: 'I can be very sweet and affectionate. I like nothing more than lying next to you on the sofa, where Ill often have a snooze. Over the last few bookings, Ive really learned to settle and really enjoy the companionship this brings.',  price: 1000 ,diet: 'Birds', picture_url: 'https://www.surfertoday.com/images/stories/oceanicwhitetipsharks.jpg' ,user_id: user2.id)
Shark.create(name: 'Finnegan', age: 304, breed: 'Blue Shark', description: 'I didnt get much experience of the world growing up, so I have a lot to catch up on. I have just been litter trained, but still find life a little bit worrying at times as I continue to adjust to the human world.', price: 10 ,diet: 'Octopus', picture_url: 'https://www.surfertoday.com/images/stories/bluesharks.jpg' ,user_id: user3.id)
Shark.create(name: 'Bites-a-Lot', age: 583, breed: 'Shortfin Mako Shark', description: 'Im the new shark on the block, and thanks to my loving owner I have been used to a life of pampering and affection. I like nuzzle cuddles and netflix and chill, and I am looking forward to developing relationships with new humans, one bite at a time.' ,  price: 5030,diet: 'Sea Turtles', picture_url: 'https://www.surfertoday.com/images/stories/shortfinmakosharks.jpg' ,user_id: user3.id)
Shark.create(name: 'Gilly', age: 29, breed: 'Sand Tiger Shark', description: 'I am a bit wary of other sharks and can react if they come too close. I am thus better suited as an indoor/house shark. If you do decide to take me out for a stroll, please do so outside of peak hours, for the wellbeing of others, and in an area that is free of screaming children and where the elderly are not off their lead.' , price: 405 ,diet: 'Fish', picture_url: 'https://www.surfertoday.com/images/stories/sandtigersharks.jpg' ,user_id: user3.id)
Shark.create(name: 'Chompy', age: 1, breed: 'Blacktip Shark',  description: 'I love cars', price: 400 ,diet: 'cars', picture_url: 'https://www.surfertoday.com/images/stories/black-tip-shark.jpg' ,user_id: user4.id)
Shark.create(name: 'Bruce Fin', age: 38,breed: 'Great White', description: 'Strictly a vegan shark' , price: 35 ,diet: 'Seaweed', picture_url: 'https://www.surfertoday.com/images/stories/greatwhitesharks.jpg' ,user_id: user4.id)
Shark.create(name: 'Hammerhead Hank', age: 68, breed: 'Nurse Shark', description: 'Always look for simple and the best one. Going with complicated and tough ideas can arise stones on your path and the fellow Instagrammers may divert their eyes from your account', price: 5000 ,diet: 'Squid', picture_url: 'https://www.surfertoday.com/images/stories/nursesharks.jpg' ,user_id: user4.id)

puts "Created Sharks"
puts "Seed file created!"
