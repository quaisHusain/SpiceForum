FactoryGirl.define do
  factory :answer do
    content "random content"
    question
    user
  end
end
