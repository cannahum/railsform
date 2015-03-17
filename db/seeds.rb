# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Item.delete_all

(0...20).each do |item|
	Item.create(:title => Faker::Commerce.product_name, :description => Faker::Hacker.say_something_smart, :owner => Faker::Name.name, :type_id => rand(1..4))
end

Type.delete_all

Type.create(:title => "Computer", :description => "PCs, Laptops, Smartphones, Tablets")
Type.create(:title => "Cellphone", :description => "Smartphones, Dumphones")
Type.create(:title => "Clothing", :description => "Clothes, Accessories, Shoes")
Type.create(:title => "Book", :description => "Hard-copy printed pages of text and image")