require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'creates a comment with user id and question id' do
	user = create('user')
	question = create('question')

	comment = Comment.new(body: "A test comment", user_id: user.id, commentable_id: question.id, commentable_type: "Question")

	expect(comment.save).to eq true
  end
  
  it 'creates a comment with user id and comment id i.e. a nested comment' do
	user = create('user')
	question = create('question')

	comment = Comment.new(body: "A test comment", user_id: user.id, commentable_id: question.id, commentable_type: "Question")
    comment.save!
    comment2 = Comment.new(body: "A test comment", user_id: user.id, commentable_id: comment.id, commentable_type: "Comment")

	expect(comment2.save).to eq true
  end
  it 'fails to create a comment with out user id ' do
	
	question = create('question')

	comment = Comment.new(body: "A test comment", commentable_id: question.id, commentable_type: "Question")
   
	expect(comment.save).to eq false
  end


  it 'fails to create a comment with out question id ' do
	user = create('user')

	comment = Comment.new(body: "A test comment", user_id: user.id,  commentable_type: "Question")
    
	expect(comment.save).to eq false
  end

  

end
