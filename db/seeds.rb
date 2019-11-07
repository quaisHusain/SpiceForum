# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(first_name: 'Quais', last_name: 'Husain', email: 'qh@gmail.com', password: '123456', password_confirmation: '123456')
user.save!
forum = Forum.new(name: "Rails Question", description: "Forum for questions on Ruby On Rails")
forum.save!
question1 = Question.new(title:"What is Rails?", body: "What is the Rails frame work all about?", user_id: user.id, forum_id:forum.id)
question1.save!
question2 = Question.new(title:"What is Assets Pipeline?", body: "What is the Assets Pipeline all about?", user_id: user.id, forum_id:forum.id)
question2.save!

comment1 = Comment.new(user_id: user.id, body:"This is an excellent question to Start with", commentable_id: question1.id, commentable_type: "Question")
comment1.save!

comment1 = Comment.new(user_id: user.id, body:"Nice Comment!", commentable_id: comment1.id, commentable_type: "Comment")
comment1.save!

answer1 = Answer.new(user_id: user.id,question_id:question1.id, content: "Rails is a web development Framework based on ruby and MVC")
answer1.save!