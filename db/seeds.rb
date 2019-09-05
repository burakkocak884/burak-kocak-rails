# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Blog.destroy_all


Comment.destroy_all
Comment.create(username: 'Adam tyler', comment: "I like this blog", blog_id: 11)
Comment.create(username: 'Ben Simpson', comment: "this blod is good", blog_id: 12)
Comment.create(username: 'Jason Mendez', comment: 'It is offensive', blog_id: 13)
Comment.create(username: 'Adam tyler', comment: 'Easy to follow', blog_id: 10)