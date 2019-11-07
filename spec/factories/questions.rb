FactoryGirl.define do

  factory :question do
    title "Question for rails"
    body "Discription for Question"
    user
    forum

  end
end
