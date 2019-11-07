require 'rails_helper'

RSpec.describe Answer, type: :model do

it 'creates an answer with user id and question id' do
	user = create('user')
	question = create('question')

	answer = Answer.new(content: "Answer to a question", user_id: user.id, question_id: question.id)

	expect(answer.save).to eq true
end

 it 'fails if an answer is created with out user id ' do
	user = create('user')
	question = create('question')

	answer = Answer.new(content: "Answer to a question",  question_id: question.id)

	expect(answer.save).to eq false
 end
 it 'fails if an answer is created with out question id ' do
	user = create('user')
	question = create('question')

	answer = Answer.new(content: "Answer to a question", user_id: user.id)

	expect(answer.save).to eq false
 end
 it 'fails if an answer is created with out content ' do
	user = create('user')
	question = create('question')

	answer = Answer.new( user_id: user.id, question_id: question.id)

	expect(answer.save).to eq false
 end


end
