require 'faker'

5.times do  
	user = User.new(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: Faker::Internet.password(8)
		)
	user.skip_confirmation!
	user.save!
end

	user = User.new(
		name: "Junjun",
		email: "aliciajace@gmail.com",
		password: "alicia16"
	)
	user.skip_confirmation!
	user.save!

	users = User.all

50.times do   
	Item.create!(
		user: users.sample,
		name: Faker::Hacker.say_something_smart
		)
end

admin = User.new(
	name: "Admin User",
	email: 'admin@exmaple.com',
	password: 'helloworld',
	)
admin.skip_confirmation!
admin.save!

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created" 