require 'rails_helper'

RSpec.describe User, type: :model do
   
   it 'fails if password confiramtion does not match' do
      
      user = User.new(email: 'qh1@test.com', password: '1234567', password_confirmation: '12121212') 
      
      expect(user.save).to eq false

   end
   
   it 'Creates user with matching password and password_confirmation' do

   	  user = User.new(email: 'qh1@test.com', password: '1234567', password_confirmation: '1234567') 
   	  expect(user.save).to eq true


   end

   it 'fails if user with sam email is crated' do

   	user1 = User.new(email: 'qh1@test.com', password: '1234567', password_confirmation: '1234567')

   	user1.save!

   	user2 =  User.new(email: 'qh1@test.com', password: '1234567', password_confirmation: '1234567')
   
   	expect(user2.save).to eq false


   end


   it 'fails if user is created without email' do

   	user = User.new(first_name: 'qh1', password: '1234567', password_confirmation: '1234567') 
   	  expect(user.save).to eq false

   end


end
