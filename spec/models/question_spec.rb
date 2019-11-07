require 'rails_helper'

RSpec.describe Question, type: :model do
  
  it 'creates a question with user and forum id' do
    user = create('user')
    forum = create('forum')
  	question = Question.new(user_id: user.id, forum_id: forum.id, title: 'New Question 1', body: 'Description for Question 1')
    expect(question.save).to eq true
  end

  it 'fails if a question is created with out forum id' do
    user = create('user')
    
  	question = Question.new(user_id: user.id, title: 'New Question 1', body: 'Description for Question 1')
    expect(question.save).to eq false
  end

 it 'fails if a question is created with out title' do
    user = create('user')
    forum = create('forum')
  	question = Question.new(user_id: user.id, forum_id: forum.id,  body: 'Description for Question 1')
    expect(question.save).to eq false
  end

  it 'fails if a question is created with out body' do
    user = create('user')
    forum = create('forum')
  	question = Question.new(user_id: user.id, forum_id: forum.id, title: 'New Question 1')
    expect(question.save).to eq false
  end

end
